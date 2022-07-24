@echo off

pushd %~dp0

set SPHINXOPTS=
set SPHINXBUILD=sphinx-build
set SOURCEDIR=source
set BUILDDIR=build
set LINTER=doc8
set LINTEROPTS=--ignore D001,WUMBO007,WUMBO008
set WINDOWSLINTEROPTS=--ignore D001,D004,WUMBO007,WUMBO008
set AUTOBUILD=sphinx-autobuild
set HTMLBUILDDIR=build\html

if "%1" == "help" goto help
if "%1" == "lint" goto lint
if "%1" == "winlint" goto winlint
if "%1" == "autobuild" goto autobuild

%SPHINXBUILD% -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS%
goto end

:help
	@%SPHINXBUILD% -M help "%SOURCEDIR%" "%BUILDDIR%" %SPHINXOPTS% %O%
	goto :EOF

:lint
	@%LINTER% %LINTEROPTS% %SOURCEDIR%/docs
	goto :EOF

:winlint
	@%LINTER% %WINDOWSLINTEROPTS% %SOURCEDIR%/docs
	goto :EOF

:autobuild
	@%AUTOBUILD% %SOURCEDIR% %HTMLBUILDDIR%
	goto :EOF

:end
popd
