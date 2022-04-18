@echo off
@setlocal enableDelayedExpansion
set dir=
set files=
@for %%f in (%*) do ( set files=!files! %%f )
@for %%f in ("%cd%") do ( set dir=%%~nxf )
docker run --platform linux/i386 --name blackbox --rm -it -v "%cd%":"/%dir%" -w "/%dir%" bb %files%