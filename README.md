Game Manual 0
=============
![Docs Badge](https://readthedocs.org/projects/game-manual-zero/badge/) ![CI Badge](https://github.com/Coppersource/gm0/workflows/CI/badge.svg) ![Linkcheck Badge](https://github.com/Coppersource/gm0/workflows/CI/link-check.svg)

Welcome to Game Manual 0 (gm0)!
This repository contains the source of Game Manual 0.

Building Game Manual 0
======================
Game Manual 0 employs the 
[Sphinx documentation generator](https://www.sphinx-doc.org/en/master/), 
and the articles themselves are written in 
[reStructuredText](http://docutils.sourceforge.net/rst.html).  

Requirements
------------
* Python 3
* TexLive
* dvipng
* graphviz
* make

Ensure the Python requirements are installed via running 
`python3 -r pip install source/requirements.txt`.

Building
--------

How to check if the documentation is valid:
* `make lint`
* `make linkcheck`

How to build the different versions of the documentation:
* `make html`
* `make latexpdf`

How to see the options for building:
* `make help`

How to develop the website:
* `make autobuild`
