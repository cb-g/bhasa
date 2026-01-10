#!/bin/sh
set -e

echo "Building Docker image..."
docker build -t bhasa-latex .

echo ""
echo "Done. Run ./compile_pdflatex.sh or ./compile_xelatex.sh to compile PDFs."
