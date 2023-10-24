#!/usr/bin/env sh

# Compresses the PDF output using ghostscript on Read the Docs.

DPI=300
PDF_DIR="$READTHEDOCS_OUTPUT/pdf"

# Check if the PDF build is enabled based on if the PDF output directory exists
if [ -d "$PDF_DIR" ]; then
    # find the already built PDF
    pdf_name=$(ls "$PDF_DIR")

    # move it into a temp directory
    # readthedocs expects only one PDF output in the directory
    # see https://docs.readthedocs.io/en/stable/reference/environment-variables.html#envvar-READTHEDOCS_OUTPUT
    temp=$(mktemp -d)
    mv "$PDF_DIR/$pdf_name" "$temp"

    # actually compress the PDF
    gs -sDEVICE=pdfwrite \
        -dCompatibilityLevel=1.4 \
        -dPDFSETTINGS=/ebook \
        -dNOPAUSE \
        -dBATCH -dColorImageResolution="$DPI" \
        -sOutputFile="$PDF_DIR/$pdf_name" "$temp/$pdf_name"
fi
