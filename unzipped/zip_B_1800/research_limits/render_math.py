"""Portable math adapter for the mobile PDF; canonical source remains TeX."""
import re

def unwrap(text, command):
    needle = '\\' + command + '{'
    while needle in text:
        start = text.index(needle)
        left = start + len(needle)
        depth = 1
        i = left
        while depth:
            depth += (text[i] == '{') - (text[i] == '}')
            i += 1
        text = text[:start] + text[left:i-1] + text[i:]
    return text

def normalize(text):
    text = ' '.join(text.split())
    text = re.sub(r'\\(mathbb|mathcal|mathfrak|bar|widetilde|sqrt)\s*(\\[A-Za-z]+|[A-Za-z0-9])',
                  lambda m: '\\' + m[1] + '{' + m[2] + '}', text)
    text = text.replace(r'\hbox', r'\mathrm')
    text = re.sub(r'\\frac\s*([0-9])([0-9])', r'\\frac{\1}{\2}', text)
    text = re.sub(r'\\xrightarrow\{([^{}]+)\}', lambda m: r'\overset{' + m[1] + r'}{\longrightarrow}', text)
    text = re.sub(r'\\ge\b', r'\\geq', text)
    text = unwrap(text, 'boxed')
    text = unwrap(text, 'underline')
    return text
