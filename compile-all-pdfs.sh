#!/bin/sh
cd typeset
for f in *.tex; do
    name="${f%.tex}"
    pdflatex -interaction=nonstopmode "$f" > /dev/null 2>&1 && echo "✓ $name" || echo "✗ $name"
done
