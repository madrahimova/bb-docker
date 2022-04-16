@echo off
@setlocal enableDelayedExpansion
set files=
@for %%f in (%*) do @echo.%%f | findstr /R [^-] >nul && ( set files=!files! %%f) || ( set files=!files! /root/home/%%f )
docker run --platform linux/i386 --name blackbox --rm -it -v "%cd%":/root/home bb %files%