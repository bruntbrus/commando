@echo off

:: Print the file ID of a file.

fsutil file queryFileid "%~1"
