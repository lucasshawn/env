@echo off
if [%1]==[] goto CLERROR
if "%ENVROOT%"=="" goto ENVERROR

@REM Append alias to the end of the aliases.txt
echo %* > %ENVROOT%\aliases.txt
doskey /MACROFILE=%ENVROOT%\aliases.txt
echo ADDED MACRO: %*
goto EOF

:CLERROR
echo Append an alias to the global list of system aliases
echo addalias [key] [value]
goto EOF

:ENVERROR
echo Missing %%ENVROOT%% environment variable.  Please run this in a supported environment.
goto EOF

:EOF