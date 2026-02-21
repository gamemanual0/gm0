# Configuration file for the Sphinx documentation builder.
#
# This file does only contain a selection of the most common options. For a
# full list see the documentation:
# http://www.sphinx-doc.org/en/master/config

import os
import re
import sys

# add source directory to sys.path, so that we can load custom extensions
sys.path.append(os.path.abspath("."))
sys.path.append(os.path.abspath("./gm0/source"))

# -- Project information -----------------------------------------------------

project = "Game Manual 0"
author = "Game Manual 0 Contributors"

hosted_by = """Hosting Graciously Provided By //Copperforge"""
copyright = author + " |  " + hosted_by

# this is to be cute, with gm0's deploy model of just showing main actual
# versions are fairly redundant
release = "0"
version = "0"

# -- General configuration ---------------------------------------------------
#
# Add any Sphinx extension module names here, as strings. They can be
# extensions coming with Sphinx (named 'sphinx.ext.*') or your custom
# ones.
#
extensions = [
    "sphinx.ext.graphviz",
    "sphinx.ext.mathjax",
    "sphinx_design",
    "sphinx_favicon",
    "sphinxext.opengraph",
    "sphinxext.rediraffe",
    "sphinxcontrib.rsvgconverter",
]

local_extensions = [
    "_extensions.default_image_settings"
]

extensions.extend(local_extensions)

templates_path = ["_templates"]
source_suffix = { ".rst": "restructuredtext" }
# The master toctree document.
master_doc = "index"

# Default syntax highlighting to java
highlight_language = "java"

rst_epilog = """
.. |gm0| replace:: Game Manual 0
.. |gm1| replace:: Game Manual Part 1
.. |gm2| replace:: Game Manual Part 2
.. |cm| replace:: Competition Manual
.. |EN| replace:: Engineering Notebook
.. |EP| replace:: Engineering Portfolio
"""

# Disable following anchors in URLs for linkcheck.
# Note they are sorted alphabetically.
linkcheck_ignore = [
    r".*andymark.com.*",
    r".*asset.pitsco.com.*",
    r".*autodesk.com.*",
    r".*axon-robotics.com.*",
    r".*canva.com.*",
    r".*chiefdelphi.com.*",
    r".*dropbox.com.*",
    r".*fastenal.com.*",
    r".*ftconshape.com",
    r".*gobilda.com",
    r".*misumi-ec.com.*",
    r".*onlinemetals.com.*",
    r".*openbuilds.com",
    r".*ptc.com.*",
    r".*reddit.com.*",
    r".*revrobotics.com.*",
    r".*robotshop.com.*",
    r".*sdp-si.com.*",
    r".*servocity.com.*",
    r".*stackexchange.com.*",
    r".*studica.com.*",
    r".*thingiverse.com.*",
    r".*vexrobotics.com.*",
]

linkcheck_anchors = False

# Configure linkcheck
linkcheck_timeout = 30
linkcheck_retries = 3
linkcheck_workers = 1 # To stop from hitting github's usage limits

# Specify a standard user agent, as Sphinx default is blocked on some sites
user_agent = "Mozilla/5.0 (X11; Linux x86_64; rv:25.0) Gecko/20100101 Firefox/25.0"

# Configure OpenGraph support 
# See https://github.com/wpilibsuite/sphinxext-opengraph

# Sadly, OpenGraph does not appear to support SVGs: https://indieweb.org/The-Open-Graph-protocol#Does_not_support_SVG_images
ogp_image = "https://raw.githubusercontent.com/gamemanual0/gm0/main/source/_static/assets/gm0-logo.png"
ogp_site_name = "Game Manual 0"

# Enables ChiefDelphi support
ogp_custom_meta_tags = [
    '<meta property="og:ignore_canonical" content="true" />',
    '<meta name="theme-color" content="#F47F27" />',
]

# Configure redirects
# See https://github.com/wpilibsuite/sphinxext-rediraffe

# Redirect branch
rediraffe_branch = "origin/main"

# File containing redirects
rediraffe_redirects = "redirects.txt"

# Required accuracy for redirect writer
rediraffe_auto_redirect_perc = 80

# Set the default image width.
# This only applies to images without an explicit width set.
default_image_width_html = "25em"
default_image_width_latex = "20em"
# Center images by default.
default_image_centered = True

# -- Options for HTML output -------------------------------------------------

# The theme to use for HTML and HTML Help pages.  See the documentation for
# a list of builtin themes.
#

html_title = "Game Manual 0"
html_theme = "furo"

# Instead of using html_favicon, we use the sphinx-favicon extension to allow for better favicon handling.
favicons = [
    # Output courtesy of https://realfavicongenerator.net/
    # Note: We are using our original favicon.svg with the relevant light/dark mode handling added manually, instead of the generated/processed favicon.svg
    # 
    # <link rel="icon" type="image/png" href="/favicon-96x96.png" sizes="96x96" />
    # <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
    # <link rel="shortcut icon" href="/favicon.ico" />
    # <link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png" />
    # <meta name="apple-mobile-web-app-title" content="Game Manual 0" />
    # <link rel="manifest" href="/site.webmanifest" />

    {"rel": "icon", "type": "image/png", "href": "assets/favicon/favicon-96x96.png", "sizes": "96x96"},
    "assets/favicon/favicon.svg",
    # The default generated favicon.ico is the dark mode one, which doesn't work on light mode browsers.  I generated both light and dark mode .ico files, and set the browser to load the relevant one.  This whole thing would be unnecessary if Safari just supported SVG favicons, but alas, it doesn't.
    {"rel": "icon", "type": "image/x-icon", "href": "assets/favicon/favicon-dark.ico", "media": "(prefers-color-scheme: dark)"},
    {"rel": "icon", "type": "image/x-icon", "href": "assets/favicon/favicon.ico", "media": "(prefers-color-scheme: light)"},
    # Back to the original defs
    {"rel": "apple-touch-icon", "sizes": "180x180", "href": "assets/favicon/apple-touch-icon.png"},
    {"rel": "manifest", "href": "assets/favicon/site.webmanifest"}
]

# Add any paths that contain custom static files (such as style sheets) here,
# relative to this directory. They are copied after the builtin static files,
# so a file named "default.css" will overwrite the builtin "default.css".
html_static_path = ["_static"]

html_css_files = [
    "custom.css",
]

# Theme options are theme-specific and customize the look and feel of a theme
# further.  For a list of options available for each theme, see the
# documentation.
html_theme_options = {
    "sidebar_hide_name": True,
    "light_logo": "assets/gm0-logo.svg",
    "dark_logo": "assets/gm0-logo_white.svg",
    "light_css_variables": {
        # Both theme variables
        "font-stack": '-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Oxygen-Sans,Ubuntu,Cantarell,"Helvetica Neue",sans-serif',
        "admonition-font-size": "1rem",
        "admonition-title-font-size": "1rem",
        # Light theme only variables
    },
    "dark_css_variables" : {
        "color-background-primary": "#1f2022",
    },
}

# Custom sidebar templates, must be a dictionary that maps document names
# to template names.
#
# The default sidebars (for documents that don't match any pattern) are
# defined by theme itself.  Builtin themes are using these templates by
# default: ``['localtoc.html', 'relations.html', 'sourcelink.html',
# 'searchbox.html']``.
#
# html_sidebars = {}


# -- Options for HTMLHelp output ---------------------------------------------

# Output file base name for HTML help builder.
htmlhelp_basename = "GameManual0Sitedoc"

# -- Options for LaTeX output ------------------------------------------------

latex_logo = "_static/assets/gm0-logo_svg-tex.pdf"

latex_engine = "xelatex"

latex_show_urls = "footnote"

latex_show_pagerefs = True

latex_use_xindy = False

latex_elements = {
    "releasename": "Game Manual 0",

    "papersize": "letterpaper",

    "fontpkg": r'''
        \setmainfont{Roboto}
        \setsansfont{Roboto}
        \setmonofont{DejaVu Sans Mono}
    ''',

    "preamble": r'''
        \usepackage[titles]{tocloft}
        \cftsetpnumwidth {1.25cm}\cftsetrmarg{1.5cm}
        \setlength{\cftchapnumwidth}{0.75cm}
        \setlength{\cftsecindent}{\cftchapnumwidth}
        \setlength{\cftsecnumwidth}{1.25cm}
	''',

    "fncychap": r'\usepackage[Bjornstrup]{fncychap}',

    "preamble": r'''
        \usepackage{datetime}

        \newdateformat{MonthYearFormat}{%
            \monthname[\THEMONTH], \THEYEAR}

        \usepackage{placeins}

        \let\Oldsection\section
        \renewcommand{\section}{\FloatBarrier\Oldsection}

        \let\Oldsubsection\subsection
        \renewcommand{\subsection}{\FloatBarrier\Oldsubsection}

        \let\Oldsubsubsection\subsubsection
        \renewcommand{\subsubsection}{\FloatBarrier\Oldsubsubsection}
    ''',

    "maketitle": r'''
        \pagenumbering{Roman} %%% to avoid page 1 conflict with actual page 1

        \begin{titlepage}
            \centering

            \vspace*{30mm} %%% * is used to give space from top

            \vspace{0mm}
            \begin{figure}[!h]
                \centering
                \includegraphics[scale=0.25,natwidth=1999,natheight=1499]{gm0-logo_svg-tex.pdf}
            \end{figure}
            \begin{flushright}
                \textbf{\Huge {"Game Manual 0"}}
                \\
                \textbf{\Large {a guide for FTC teams\\enjoy!}}
            \end{flushright}

            \vspace{0mm}

            \vfill
            \small Published on : September, 2019

            \vspace*{0mm}
            \small  Last updated : \MonthYearFormat\today

        \end{titlepage}

        \clearpage
        \pagenumbering{roman}
        \clearpage
        \pagenumbering{arabic}

    ''',
}

# Grouping the document tree into LaTeX files. List of tuples
# (source start file, target name, title,
#  author, documentclass [howto, manual, or own class]).
latex_documents = [
    (master_doc, "GameManual0.tex", "Game Manual 0", "Game Manual 0 Contributors", "manual"),
]


# -- Options for manual page output ------------------------------------------

# One entry per manual page. List of tuples
# (source start file, name, description, authors, manual section).
man_pages = [
    (master_doc, "gamemanual0", "Game Manual 0",
     [author], 1)
]

# -- Options for Texinfo output ----------------------------------------------
texinfo_documents = [
    (master_doc, "GameManual0", "Game Manual 0",
     author, "GameManual0", "The most comprehensive guide for FTC teams.",
     "Miscellaneous"),
]


# -- Options for Epub output -------------------------------------------------

# Bibliographic Dublin Core info.
epub_title = project

# The unique identifier of the text. This can be a ISBN number
# or the project homepage.
#
# epub_identifier = ''

# A unique identification for the text.
#
# epub_uid = ''

# A list of files that should not be packed into the epub file.
epub_exclude_files = ["search.html"]

def setup(app):
    pass

# Options for translation support
gettext_compact = False
locale_dirs = ["locale/"]

# -- GraphViz configuration ----------------------------------
graphviz_output_format = 'svg'
