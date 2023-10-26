#!/usr/bin/env sh

# Compresses the PDF output using ghostscript on Read the Docs.

DPI=400
PDF_DIR="$READTHEDOCS_OUTPUT/pdf"

# only run if the PDF build is enabled
# based on whether or not the PDF output directory exists
if [ -d "$PDF_DIR" ]; then
    # find the existing PDF
    pdf_name=$(ls "$PDF_DIR")

    # Read the Docs expects only one PDF file in the output directory
    # see https://docs.readthedocs.io/en/stable/reference/environment-variables.html#envvar-READTHEDOCS_OUTPUT
    # so we move the existing PDF into a temp directory.
    temp=$(mktemp -d)
    mv "$PDF_DIR/$pdf_name" "$temp"

    # compress the existing PDF into a new PDF,
    # placed directly in the output directory
    gs -sDEVICE=pdfwrite \
        -dCompatibilityLevel=1.4 \
        -dPDFSETTINGS=/ebook \
        -dNOPAUSE \
        -dBATCH -dColorImageResolution="$DPI" \
        -sOutputFile="$PDF_DIR/$pdf_name" "$temp/$pdf_name"
fi
