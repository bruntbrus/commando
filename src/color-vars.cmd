@echo off

:: Print input as list of variables in color.
:: color-vars

for /f "tokens=1,2 delims==" %%i in ('more') do echo [33m%%i[90m=[0m%%j
