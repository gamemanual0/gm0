@echo off

set SPHINXOPTS=SPHINXBUILD   = sphinx-build
set SOURCEDIR=source
set BUILDDIR=build
set LINTER=doc8
set LINTEROPTS=--ignore D001,WUMBO007,WUMBO008
set WINDOWSLINTEROPTS=--ignore D001,D004,WUMBO007,WUMBO008
set AUTOBUILD=sphinx-autobuild
set HTMLBUILDDIR=build\html

IF /I "%1"=="help" GOTO help
IF /I "%1"=="lint" GOTO lint
IF /I "%1"=="winlint" GOTO winlint
IF /I "%1"=="autobuild" GOTO autobuild
IF /I "%1"=="%" GOTO %
GOTO error

:help
	@%SPHINXBUILD% -M help "%SOURCEDIR%" "%BUILDDIR%" %SPHINXOPTS% %O%
	GOTO :EOF

:lint
	@%LINTER% %LINTEROPTS% %SOURCEDIR%/docs
	GOTO :EOF

:winlint
	@%LINTER% %WINDOWSLINTEROPTS% %SOURCEDIR%/docs
	GOTO :EOF

:autobuild
	@%AUTOBUILD% %SOURCEDIR% %HTMLBUILDDIR%
	GOTO :EOF

:%
	CALL make.bat Makefile
	@%SPHINXBUILD% -M $@ "%SOURCEDIR%" "%BUILDDIR%" %SPHINXOPTS% %O%
	GOTO :EOF

:error
    IF "%1"=="" (
        ECHO make: *** No targets specified and no makefile found.  Stop.
    ) ELSE (
        ECHO make: *** No rule to make target '%1%'. Stop.
    )
    GOTO :EOF
