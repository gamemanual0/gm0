# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

LINTER = doc8
LINTEROPTS = --ignore D001,WUMBO007,WUMBO008
#D001 is linelength, WUMBO007/008 are trademark and italicization respectively

WINDOWSLINTEROPTS = --ignore D001,D004,WUMBO007,WUMBO008
# D004 is CRLF line endings;
# git on windows often uses these but only in the working tree.

AUTOBUILD = sphinx-autobuild
HTMLBUILDDIR = build/html

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

lint:
	@$(LINTER) $(LINTEROPTS) $(SOURCEDIR)/docs

winlint:
	@$(LINTER) $(WINDOWSLINTEROPTS) $(SOURCEDIR)/docs

.PHONY: help lint Makefile

autobuild:
	@$(AUTOBUILD) $(SOURCEDIR) $(HTMLBUILDDIR)

.PHONY: help autobuild Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
