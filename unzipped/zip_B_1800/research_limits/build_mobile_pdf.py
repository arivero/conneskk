"""Build the canonical Markdown as a narrow, bookmarked ReportLab PDF.

Requires pandoc, numpy, matplotlib, reportlab, Pillow and pypdf.
Display mathematics is drawn as vector text. Inline math uses high-resolution
transparent images. The source and textual content remain searchable.
"""
from pathlib import Path
import hashlib
import html
import io
import json
import re
import subprocess
import sys
import numpy as np
import matplotlib
matplotlib.use('Agg')
matplotlib.rcParams['mathtext.fontset']='stix'
from matplotlib.mathtext import MathTextParser, math_to_image
from matplotlib.font_manager import FontProperties
from reportlab.pdfbase import pdfmetrics
from reportlab.pdfbase.ttfonts import TTFont
from reportlab.pdfbase import ttfonts
from reportlab.lib import colors
from reportlab.lib.enums import TA_LEFT
from reportlab.lib.styles import ParagraphStyle
from reportlab.platypus import (BaseDocTemplate, PageTemplate, Frame, Paragraph,
    Spacer, PageBreak, CondPageBreak, Flowable, Image, KeepTogether)
from reportlab.platypus.tableofcontents import TableOfContents
from render_math import normalize

ROOT=Path(__file__).resolve().parent
WORK=ROOT.parent
OUT=WORK/'output/pdf/connes_9_10_11_mobile.pdf'
TMP=WORK/'tmp/pdfs'
TMP.mkdir(parents=True,exist_ok=True)
(TMP/'math').mkdir(exist_ok=True)
OUT.parent.mkdir(parents=True,exist_ok=True)

# ReportLab's formatter emits non-BMP mathematical characters as five hex
# digits. PDF ToUnicode mappings require UTF-16BE, including surrogate pairs.
_original_cmap=ttfonts.makeToUnicodeCMap
def unicode_cmap(fontname,subset):
    text=_original_cmap(fontname,subset)
    return re.sub(r'<([0-9A-Fa-f]{5,6})>',
        lambda m:'<'+chr(int(m[1],16)).encode('utf-16-be').hex().upper()+'>',text)
ttfonts.makeToUnicodeCMap=unicode_cmap

for name,filename in [
 ('Body','DejaVuSerif.ttf'),('Body-Bold','DejaVuSerif-Bold.ttf'),
 ('Body-Italic','DejaVuSerif-Italic.ttf'),('Body-BoldItalic','DejaVuSerif-BoldItalic.ttf'),
 ('Sans','DejaVuSans.ttf'),('Sans-Bold','DejaVuSans-Bold.ttf'),
 ('Mono','DejaVuSansMono.ttf')]:
    fontpath=Path(matplotlib.get_data_path())/'fonts/ttf'/filename
    pdfmetrics.registerFont(TTFont(name,str(fontpath)))
pdfmetrics.registerFontFamily('Body',normal='Body',bold='Body-Bold',italic='Body-Italic',boldItalic='Body-BoldItalic')
pdfmetrics.registerFontFamily('Sans',normal='Sans',bold='Sans-Bold',italic='Sans',boldItalic='Sans-Bold')

PAGE_W,PAGE_H=378,612
MARGIN=27
WIDTH=PAGE_W-2*MARGIN
INK=colors.HexColor('#18252a')
TEAL=colors.HexColor('#0f6466')
MUTED=colors.HexColor('#5b6a70')
BODY=13.0
DISPLAY=16.0
styles={
 'body':ParagraphStyle('Body',fontName='Body',fontSize=BODY,leading=18.1,textColor=INK,
     spaceAfter=8.4,alignment=TA_LEFT,allowWidows=0,allowOrphans=0,splitLongWords=True),
 'h1':ParagraphStyle('H1',fontName='Sans-Bold',fontSize=19,leading=23.2,textColor=TEAL,
     spaceBefore=20,spaceAfter=12,keepWithNext=True),
 'h2':ParagraphStyle('H2',fontName='Sans-Bold',fontSize=14.1,leading=18.4,textColor=TEAL,
     spaceBefore=15,spaceAfter=8,keepWithNext=True),
 'caption':ParagraphStyle('Caption',fontName='Sans',fontSize=10.8,leading=14.5,
     textColor=MUTED,spaceAfter=12),
 'small':ParagraphStyle('Small',fontName='Sans',fontSize=10.8,leading=14.8,
     textColor=MUTED,spaceAfter=8),
 'list':ParagraphStyle('List',fontName='Body',fontSize=BODY,leading=18.1,
     textColor=INK,leftIndent=12,firstLineIndent=-12,spaceAfter=8.4,
     allowWidows=0,allowOrphans=0),
 'table':ParagraphStyle('TableCard',fontName='Body',fontSize=12.3,leading=17.2,
     textColor=INK,leftIndent=10,borderColor=colors.HexColor('#bdd4d3'),
     borderWidth=.5,borderPadding=8,spaceBefore=3,spaceAfter=8),
 'ref':ParagraphStyle('Ref',fontName='Body',fontSize=11.7,leading=16.2,
     textColor=INK,spaceAfter=9.5),
}
for style in styles.values():
    style.autoLeading='max'
parser=MathTextParser('path')
math_prop=FontProperties(size=BODY)
math_cache={}
registered_math={}
layout_stats={'equations':[],'inline_math':0,'source_words':len((ROOT/'canonical_research.md').read_text().split())}

def math_parse(tex,size=BODY):
    key=(normalize(tex),size)
    if key not in math_cache:
        math_cache[key]=parser.parse('$'+key[0]+'$',dpi=72,prop=FontProperties(size=size))
    return math_cache[key]

def register_math_font(font):
    path=font.fname
    if path not in registered_math:
        name='Math'+str(len(registered_math))
        pdfmetrics.registerFont(TTFont(name,path))
        registered_math[path]=name
    return registered_math[path]

def draw_math(canvas,out,x,y,scale=1):
    canvas.saveState()
    canvas.translate(x,y)
    canvas.scale(scale,scale)
    canvas.setFillColor(INK)
    for font,size,code,dx,dy in out.glyphs:
        canvas.setFont(register_math_font(font),size)
        canvas.drawString(dx,dy+out.depth,chr(code))
    for rx,ry,rw,rh in out.rects:
        canvas.rect(rx,ry+out.depth,rw,rh,stroke=0,fill=1)
    canvas.restoreState()

class Equation(Flowable):
    def __init__(self,tex):
        Flowable.__init__(self)
        self.tex=tex
        self.lines=split_math(tex)
        self.parsed=[math_parse(s,DISPLAY) for s in self.lines]
        self.spaceBefore=5
        self.spaceAfter=10
        self.scale=min(1,(WIDTH-8)/max(o.width for o in self.parsed))
        if self.scale<.88:
            raise ValueError('Equation too small: '+tex)
        self.height=sum(o.height*self.scale for o in self.parsed)+7*(len(self.lines)-1)+5
        self.width=WIDTH
        layout_stats['equations'].append({'tex':tex.strip(),'lines':len(self.lines),'scale':self.scale})
    def draw(self):
        y=self.height-3
        for out in self.parsed:
            y-=out.height*self.scale
            draw_math(self.canv,out,(WIDTH-out.width*self.scale)/2,y,self.scale)
            y-=7

def split_math(tex):
    s=normalize(tex)
    if math_parse(s,DISPLAY).width<=WIDTH-8:
        return [s]
    # Break at actual top-level clauses, preserving their mathematical order.
    for separator in [r'\qquad',r'\quad']:
        if separator in s:
            pieces=[p.strip() for p in s.split(separator) if p.strip()]
            if len(pieces)>1:
                return sum((split_math(p) for p in pieces),[])
    # Break an equality into two display lines when no clause separator exists.
    depth=0
    candidates=[]
    for i,c in enumerate(s):
        if c=='{':depth+=1
        elif c=='}':depth-=1
        elif c=='=' and depth==0 and i>8:candidates.append(i)
    if candidates:
        i=min(candidates,key=lambda i:abs(i-len(s)/2))
        left,right=s[:i],s[i:]
        if max(math_parse(p,DISPLAY).width for p in [left,right])<WIDTH-8:return [left,right]
    return [s]

def inline_math(tex,size=BODY):
    size *= 1.08
    out=math_parse(tex,size)
    digest=hashlib.sha256((normalize(tex)+str(size)).encode()).hexdigest()[:20]
    path=TMP/'math'/f'{digest}.png'
    if not path.exists():
        math_to_image('$'+normalize(tex)+'$',str(path),prop=FontProperties(size=size),
                      dpi=360,format='png',color='#18252a')
    layout_stats['inline_math']+=1
    return f'<img src="{path}" width="{out.width}" height="{out.height}" valign="{-out.depth}"/>'

def plain(inlines):
    chunks=[]
    for x in inlines:
        typ=x['t'];c=x.get('c')
        if typ=='Str':chunks.append(c)
        elif typ in ('Space','SoftBreak','LineBreak'):chunks.append(' ')
        elif typ in ('Strong','Emph','SmallCaps','Strikeout','Superscript','Subscript'):chunks.append(plain(c))
        elif typ=='Math':
            p=math_parse(c[1]);chunks.append(''.join(chr(g[2]) for g in p.glyphs))
        elif typ=='Code':chunks.append(c[1])
        elif typ in ('Link','Image'):chunks.append(plain(c[1]))
    return ''.join(chunks)

def inline(inlines,size=BODY):
    chunks=[]
    consumed={}
    for index,x in enumerate(inlines):
        typ=x['t'];c=x.get('c')
        if typ=='Str':chunks.append(html.escape(c[consumed.get(index,0):]))
        elif typ in ('Space','SoftBreak'):chunks.append(' ')
        elif typ=='LineBreak':chunks.append('<br/>')
        elif typ=='Strong':chunks.append('<b>'+inline(c,size)+'</b>')
        elif typ=='Emph':chunks.append('<i>'+inline(c,size)+'</i>')
        elif typ=='Code':chunks.append('<font name="Mono" size="10.3">'+html.escape(c[1])+'</font>')
        elif typ=='Math':
            tex=c[1]
            if index+1<len(inlines) and inlines[index+1]['t']=='Str':
                punctuation=re.match(r'^[,.;:!?)]+' ,inlines[index+1]['c'])
                if punctuation:
                    consumed[index+1]=len(punctuation[0])
                    tex+=r'\mathrm{'+punctuation[0]+'}'
            chunks.append(inline_math(tex,size))
        elif typ=='Link':chunks.append('<link href="'+html.escape(c[2][0],quote=True)+'" color="#0f6466">'+inline(c[1],size)+'</link>')
        elif typ=='Superscript':chunks.append('<super>'+inline(c,size*.8)+'</super>')
        elif typ=='Subscript':chunks.append('<sub>'+inline(c,size*.8)+'</sub>')
        elif typ=='Quoted':chunks.append('“'+inline(c[1],size)+'”')
        elif typ=='RawInline':chunks.append(html.escape(c[1]))
        elif typ=='Image':chunks.append(plain(c[1]))
        else:raise ValueError('Unhandled inline '+typ)
    return ''.join(chunks)

def cell_text(cell):
    return '<br/>'.join(inline(b['c'],12.3) for b in cell[-1] if b['t'] in ('Plain','Para'))

def table_cards(c):
    headers=[cell_text(x) for x in c[3][1][0][1]]
    rows=[]
    for body in c[4]:rows.extend(body[3])
    result=[]
    for row in rows:
        vals=[cell_text(x) for x in row[1]]
        parts=[]
        for h,v in zip(headers,vals):parts.append(f'<b>{h}:</b> {v}')
        result.append(KeepTogether([Paragraph('<br/>'.join(parts),styles['table'])]))
    return result

headings=[]
def convert_blocks(blocks,in_list=False,references=False):
    flows=[]
    for b in blocks:
        t,c=b['t'],b.get('c')
        if t=='Header':
            level,attrs,content=c
            title=plain(content)
            key=attrs[0]
            references=title=='References'
            if level==1:
                flows.append(CondPageBreak(116))
            p=Paragraph(inline(content,15 if level==1 else 13.3),styles['h1' if level==1 else 'h2'])
            p._heading=(level,title,key)
            headings.append((level,title,key))
            flows.append(p)
        elif t in ('Para','Plain'):
            if len(c)==1 and c[0]['t']=='Math' and c[0]['c'][0]['t']=='DisplayMath':
                flows.append(Equation(c[0]['c'][1]))
            elif len(c)==1 and c[0]['t']=='Image':
                img=c[0]['c']; path=ROOT/img[2][0]
                from PIL import Image as PILImage
                w,h=PILImage.open(path).size
                flows.append(KeepTogether([Image(str(path),width=WIDTH,height=WIDTH*h/w),
                    Paragraph(inline(img[1],10.8),styles['caption'])]))
            else:
                style=styles['ref' if references else 'body']
                flows.append(Paragraph(inline(c,style.fontSize),style))
        elif t in ('BulletList','OrderedList'):
            items=c if t=='BulletList' else c[1]
            start=1 if t=='BulletList' else c[0][0]
            for j,item in enumerate(items):
                marker='•' if t=='BulletList' else str(start+j)+'.'
                if len(item)==1 and item[0]['t'] in ('Para','Plain'):
                    style=styles['ref'] if references else styles['list']
                    paragraph=Paragraph(marker+' '+inline(item[0]['c'],style.fontSize),style)
                    flows.append(KeepTogether([paragraph]) if references else paragraph)
                else:
                    sub=convert_blocks(item,True,references)
                    if sub and isinstance(sub[0],Paragraph):
                        sub[0]=Paragraph(marker+' '+sub[0].text,styles['list'])
                    flows.extend(sub)
        elif t=='Table':flows.extend(table_cards(c))
        elif t=='Figure':flows.extend(convert_blocks(c[2],in_list,references))
        elif t=='BlockQuote':flows.extend(convert_blocks(c,in_list,references))
        elif t=='HorizontalRule':flows.append(Spacer(1,8))
        elif t=='CodeBlock':flows.append(Paragraph(html.escape(c[1]),styles['small']))
        elif t=='Div':flows.extend(convert_blocks(c[1],in_list,references))
        else:raise ValueError('Unhandled block '+t)
    return flows

class PaperDoc(BaseDocTemplate):
    def __init__(self,*args,**kwargs):
        super().__init__(*args,pagesize=(PAGE_W,PAGE_H),leftMargin=MARGIN,rightMargin=MARGIN,
            topMargin=36,bottomMargin=35,**kwargs)
        frame=Frame(MARGIN,35,WIDTH,PAGE_H-71,leftPadding=0,rightPadding=0,topPadding=0,bottomPadding=0)
        self.addPageTemplates(PageTemplate(id='paper',frames=frame,onPage=self.decorate))
    def decorate(self,canvas,doc):
        canvas.saveState()
        if doc.page>1:
            canvas.setFont('Sans',8.8)
            canvas.setFillColor(MUTED)
            canvas.drawString(MARGIN,PAGE_H-20,'9 / 10 / 11   •   CONNES AND KALUZA-KLEIN LIMITS')
            canvas.setStrokeColor(colors.HexColor('#d2dddd'))
            canvas.setLineWidth(.4)
            canvas.line(MARGIN,PAGE_H-25,PAGE_W-MARGIN,PAGE_H-25)
        canvas.setFont('Sans',9.2)
        canvas.setFillColor(MUTED)
        canvas.drawRightString(PAGE_W-MARGIN,17,str(doc.page))
        canvas.restoreState()
    def afterFlowable(self,flowable):
        if hasattr(flowable,'_heading'):
            level,title,key=flowable._heading
            self.canv.bookmarkPage(key)
            self.canv.addOutlineEntry(title,key,level=min(level-1,1),closed=level>1)
            if level==1:self.notify('TOCEntry',(0,html.escape(title),self.page,key))

def main():
    ast=json.loads(subprocess.run(['pandoc','-f','markdown+tex_math_dollars','-t','json',
             str(ROOT/'canonical_research.md')],capture_output=True,text=True,check=True).stdout)
    (TMP/'paper_ast.json').write_text(json.dumps(ast))
    title_style=ParagraphStyle('Title',fontName='Sans-Bold',fontSize=29,leading=34,textColor=TEAL,spaceAfter=19)
    subtitle_style=ParagraphStyle('Subtitle',fontName='Body',fontSize=16,leading=21,textColor=INK,spaceAfter=18)
    story=[Spacer(1,40),Paragraph('Nine, Ten and<br/>Eleven Dimensions',title_style),
           Paragraph('Controlled limits of Kaluza-Klein and Connes geometries',subtitle_style),
           Paragraph('CONSOLIDATED RESEARCH PAPER<br/>2 November 2026',styles['small']),
           Spacer(1,32),Paragraph('Geometry is established in several branches. A single physical interpolation remains to be constructed.',styles['body']),
           Spacer(1,14),Paragraph('Single-column mobile edition<br/>Canonical source with explicit claim status',styles['small']),PageBreak()]
    # Abstract first; contents after the opening abstract and reading guide.
    blocks=ast['blocks']; cut=next(i for i,b in enumerate(blocks) if b['t']=='Header' and plain(b['c'][2]).startswith('1. '))
    story.extend(convert_blocks(blocks[:cut]))
    story.append(PageBreak())
    story.append(Paragraph('Contents',styles['h1']))
    toc=TableOfContents()
    toc.levelStyles=[ParagraphStyle('TOC',fontName='Sans',fontSize=11.7,leading=16.5,
                     textColor=INK,spaceBefore=6,leftIndent=0,rightIndent=23,firstLineIndent=0)]
    story.extend([toc,PageBreak()])
    story.extend(convert_blocks(blocks[cut:]))
    doc=PaperDoc(str(OUT),title='Nine, Ten and Eleven Dimensions',
                 author='Consolidated research dialogue',
                 subject='Kaluza-Klein limits, Connes spectral triples, chirality and gauge reduction')
    doc.multiBuild(story)
    from pypdf import PdfReader
    reader=PdfReader(OUT)
    layout_stats['pages']=len(reader.pages)
    layout_stats['page_size_pt']=[PAGE_W,PAGE_H]
    layout_stats['body_size_pt']=BODY
    layout_stats['heading_count']=len(headings)
    (TMP/'layout_stats.json').write_text(json.dumps(layout_stats,indent=2))
    print(json.dumps({'pdf':str(OUT),'pages':len(reader.pages),'bytes':OUT.stat().st_size,
                     'equations':len(layout_stats['equations']),'body_pt':BODY}))

if __name__=='__main__':main()
