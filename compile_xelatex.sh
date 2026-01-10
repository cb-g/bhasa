#!/bin/sh
docker run --rm -v "$(pwd)/typeset:/workspace/typeset" bhasa-latex sh -c '
cd /workspace/typeset
for f in *_xelatex.tex; do
    [ -f "$f" ] || continue
    name="${f%.tex}"
    xelatex -interaction=nonstopmode "$f" > /dev/null 2>&1 && echo "✓ ${name}.pdf" || echo "✗ $name"
done
'
