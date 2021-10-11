@echo off

:: Sets variables for text formatting.

:: Default format
set TF_DEF=[0m

:: Bold format
set TF_BOLD=[1m

:: Underline format
set TF_UND=[4m

:: Not underline format
set TF_NOT_UND=[24m

:: Negative (invert) format
set TF_NEG=[7m

:: Positive (normal) format
set TF_POS=[27m

:: Foreground black
set TF_FG_BLACK=[30m

:: Foreground red
set TF_FG_RED=[31m

:: Foreground green
set TF_FG_GREEN=[32m

:: Foreground yellow
set TF_FG_YELLOW=[33m

:: Foreground blue
set TF_FG_BLUE=[34m

:: Foreground magenta
set TF_FG_MAGENTA=[35m

:: Foreground cyan
set TF_FG_CYAN=[36m

:: Foreground white
set TF_FG_WHITE=[37m

:: Foreground default
set TF_FG_DEF=[39m

:: Background black
set TF_BG_BLACK=[40m

:: Background red
set TF_BG_RED=[41m

:: Background green
set TF_BG_GREEN=[42m

:: Background yellow
set TF_BG_YELLOW=[43m

:: Background blue
set TF_BG_BLUE=[44m

:: Background magenta
set TF_BG_MAGENTA=[45m

:: Background cyan
set TF_BG_CYAN=[46m

:: Background white
set TF_BG_WHITE=[47m

:: Background default
set TF_BG_DEF=[49m

:: Foreground bright black
set TF_FG_BR_BLACK=[90m

:: Foreground bright red
set TF_FG_BR_RED=[91m

:: Foreground bright green
set TF_FG_BR_GREEN=[92m

:: Foreground bright yellow
set TF_FG_BR_YELLOW=[93m

:: Foreground bright blue
set TF_FG_BR_BLUE=[94m

:: Foreground bright magenta
set TF_FG_BR_MAGENTA=[95m

:: Foreground bright cyan
set TF_FG_BR_CYAN=[96m

:: Foreground bright white
set TF_FG_BR_WHITE=[97m

:: Background bright black
set TF_BG_BR_BLACK=[100m

:: Background bright red
set TF_BG_BR_RED=[101m

:: Background bright green
set TF_BG_BR_GREEN=[102m

:: Background bright yellow
set TF_BG_BR_YELLOW=[103m

:: Background bright blue
set TF_BG_BR_BLUE=[104m

:: Background bright magenta
set TF_BG_BR_MAGENTA=[105m

:: Background bright cyan
set TF_BG_BR_CYAN=[106m

:: Background bright white
set TF_BG_BR_WHITE=[107m

:: Foreground color by index (append <i>m) in color table
set TF_FG_I=[38;5;

:: Foreground RGB color (append <r>;<g>;<b>m)
set TF_FG_RGB=[38;2;

:: Background color by index (append <i>m) in color table
set TF_BG_I=[48;5;

:: Background RGB color (append <r>;<g>;<b>m)
set TF_BG_RGB=[48;2;
