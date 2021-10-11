@echo off

:: Print a string value from the registry.
:: get-reg-str "key"

for /f "tokens=3" %%a in ('reg query "%~1" /v "%~2" ^| findstr /ri "REG_SZ"') do echo %%a
