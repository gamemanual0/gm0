#!/usr/bin/env sh

if [ "$(find source/docs -name "*.rst" -print0 | xargs -0 grep -P '[^\x00-\x7F]')" ]; then
    echo "Unicode character(s) found in rst file! This may be due to copy and pasting from"
    echo "a word processor with smart quotes (e.g. Google Docs, Microsoft Word)."
    echo ""
    echo "If the special character is intentional (e.g. a degree sign, micro symbol),"
    echo "use the appropriate substititution from isonum.txt."
    echo "See https://docutils.sourceforge.io/docutils/parsers/rst/include/isonum.txt"
    echo "for a list of substitutions."
    echo "'.. include:: <isonum.txt>' may need to be included at the top of the file"
    echo "if it is not already."
    echo ""
    echo "Location of Unicode character(s):"
    # print the locations of the unicode characters
    find source/docs -name "*.rst" -print0 | xargs -0 grep -nP '[^\x00-\x7F]'
    # exit throwing an error
    exit 1
else
    echo "No Unicode characters in rst files found."
fi
