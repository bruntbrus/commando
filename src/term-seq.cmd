@echo off

:: Console Virtual Terminal Sequences
:: https://docs.microsoft.com/en-us/windows/console/console-virtual-terminal-sequences

:: Escape (0x1B)
set ESC=

:: Bell (0x07)
set BEL=

:: Control Sequence Introducer
set CSI=%ESC%[

:: Operating System Command
set OSC=%ESC%]

:: Cursor up (CUU)
set CURS_UP=%ESC%A

:: Cursor down (CUD)
set CURS_DOWN=%ESC%B

:: Cursor forward (CUF)
set CURS_FORW=%ESC%C

:: Cursor backward (CUB)
set CURS_BACK=%ESC%D

:: Cursor reverse index (RI)
set CURS_REV=%ESC%M

:: Save cursor (DECSC)
set CURS_SAVE=%ESC%7

:: Restore cursor (DECRC)
set CURS_REST=%ESC%8

:: Enable blinking cursor (ATT160)
set CURS_BLINK_ON=%CSI%?12h

:: Disable blinking cursor (ATT160)
set CURS_BLINK_OFF=%CSI%?12l

:: Show cursor (DECTCEM)
set CURS_SHOW=%CSI%?25h

:: Hide cursor (DECTCEM)
set CURS_HIDE=%CSI%?25l

:: Report cursor position (DECXCPR)
set CURS_POS=%CSI%6n

:: Set tab stop (HTS)
set TAB_SET=%ESC%H

:: Clear tab stop in current column (TBC)
set TAB_CLEAR=%CSI%0g

:: Clear all tab stops (TBC)
set TAB_CLEAR_ALL=%CSI%3g

:: Report device attributes (DA)
set DEV_ATTRIBS=%CSI%0c

:: Use alternate screen buffer
set SCR_BUFFER_ALT=%CSI%?1049h

:: Use main screen buffer
set SCR_BUFFER_MAIN=%CSI%?1049l

:: Set console width to 80 columns (DECCOLM)
set WIN_WIDTH_80=%CSI%?3l

:: Set console width to 132 columns (DECCOLM)
set WIN_WIDTH_132=%CSI%?3h

:: Soft reset (DECSTR)
set SOFT_RESET=%CSI%!p

:: Enable DEC line drawing mode
set CHAR_MODE_DEC=%ESC%(0

:: Enable ASCII mode (default)
set CHAR_MODE_ASCII=%ESC%(B

:: Enable keypad Application Mode (DECKPAM)
set KEYPAD_APP_MODE=%ESC%=

:: Enable keypad Numeric Mode (DECKPNM)
set KEYPAD_NUM_MODE=%ESC%^>

:: Enable Cursor Keys Application Mode (DECCKM)
set CURS_KEYS_AM_ON=%CSI%?1h

:: Disable Cursor Keys Application Mode (DECCKM)
set CURS_KEYS_AM_OFF=%CSI%?1l

:: Arrow up key
SET KEY_UP=%CSI%A

:: Arrow down key
SET KEY_DOWN=%CSI%B

:: Arrow right key
SET KEY_RIGHT=%CSI%C

:: Arrow left key
SET KEY_LEFT=%CSI%D

:: Home key
SET KEY_HOME=%CSI%H

:: End key
SET KEY_END=%CSI%F

:: Arrow key up in application mode
SET KEY_UP_AM=%ESC%OA

:: Arrow key down in application mode
SET KEY_DOWN_AM=%ESC%OB

:: Arrow key right in application mode
SET KEY_RIGHT_AM=%ESC%OC

:: Arrow key left in application mode
SET KEY_LEFT_AM=%ESC%OD

:: Home key in application mode
SET KEY_HOME_AM=%ESC%OH

:: End key in application mode
SET KEY_END_AM=%ESC%OF

:: Ctrl + Arrow up key
set KEY_CTRL_UP=%CSI%1;5A

:: Ctrl + Arrow down key
SET KEY_CTRL_DOWN=%CSI%1;5B

:: Ctrl + Arrow right key
SET KEY_CTRL_RIGHT=%CSI%1;5C

:: Ctrl + Arrow left key
SET KEY_CTRL_LEFT=%CSI%1;5D

:: Insert key
SET KEY_INS=%CSI%2~

:: Delete key
SET KEY_DEL=%CSI%3~

:: Page up key
SET KEY_PAGE_UP=%CSI%5~

:: Page down key
SET KEY_PAGE_DOWN=%CSI%6~

:: F1 key
set KEY_F1=%ESC%OP

:: F2 key
set KEY_F2=%ESC%OQ

:: F3 key
set KEY_F3=%ESC%OR

:: F4 key
set KEY_F4=%ESC%OS

:: F5 key
set KEY_F5=%CSI%15~

:: F6 key
set KEY_F6=%CSI%17~

:: F7 key
set KEY_F7=%CSI%18~

:: F8 key
set KEY_F8=%CSI%19~

:: F9 key
set KEY_F9=%CSI%20~

:: F10 key
set KEY_F10=%CSI%21~

:: F11 key
set KEY_F11=%CSI%23~

:: F12 key
set KEY_F12=%CSI%24~

:: Default format
set F_DEF=%CSI%0m

:: Bold format
set F_BOLD=%CSI%1m

:: Underline format
set F_UND=%CSI%4m

:: Not underline format
set F_NOT_UND=%CSI%24m

:: Negative (invert) format
set F_NEG=%CSI%7m

:: Positive (normal) format
set F_POS=%CSI%27m

:: Foreground black
set F_FG_BLACK=%CSI%30m

:: Foreground red
set F_FG_RED=%CSI%31m

:: Foreground green
set F_FG_GREEN=%CSI%32m

:: Foreground yellow
set F_FG_YELLOW=%CSI%33m

:: Foreground blue
set F_FG_BLUE=%CSI%34m

:: Foreground magenta
set F_FG_MAGENTA=%CSI%35m

:: Foreground cyan
set F_FG_CYAN=%CSI%36m

:: Foreground white
set F_FG_WHITE=%CSI%37m

:: Foreground default
set F_FG_DEF=%CSI%39m

:: Background black
set F_BG_BLACK=%CSI%40m

:: Background red
set F_BG_RED=%CSI%41m

:: Background green
set F_BG_GREEN=%CSI%42m

:: Background yellow
set F_BG_YELLOW=%CSI%43m

:: Background blue
set F_BG_BLUE=%CSI%44m

:: Background magenta
set F_BG_MAGENTA=%CSI%45m

:: Background cyan
set F_BG_CYAN=%CSI%46m

:: Background white
set F_BG_WHITE=%CSI%47m

:: Background default
set F_BG_DEF=%CSI%49m

:: Foreground bright black
set F_FG_BLACK_B=%CSI%90m

:: Foreground bright red
set F_FG_RED_B=%CSI%91m

:: Foreground bright green
set F_FG_GREEN_B=%CSI%92m

:: Foreground bright yellow
set F_FG_YELLOW_B=%CSI%93m

:: Foreground bright blue
set F_FG_BLUE_B=%CSI%94m

:: Foreground bright magenta
set F_FG_MAGENTA_B=%CSI%95m

:: Foreground bright cyan
set F_FG_CYAN_B=%CSI%96m

:: Foreground bright white
set F_FG_WHITE_B=%CSI%97m

:: Background bright black
set F_BG_BLACK_B=%CSI%100m

:: Background bright red
set F_BG_RED_B=%CSI%101m

:: Background bright green
set F_BG_GREEN_B=%CSI%102m

:: Background bright yellow
set F_BG_YELLOW_B=%CSI%103m

:: Background bright blue
set F_BG_BLUE_B=%CSI%104m

:: Background bright magenta
set F_BG_MAGENTA_B=%CSI%105m

:: Background bright cyan
set F_BG_CYAN_B=%CSI%106m

:: Background bright white
set F_BG_WHITE_B=%CSI%107m

:: Sequence               | Code      | Description                     | Behavior
:: ---------------------- | --------- | ------------------------------- | --------
:: %CSI%<n>A              | CUU       | Cursor Up                       | Cursor up by <n>.
:: %CSI%<n>B              | CUD       | Cursor Down                     | Cursor down by <n>.
:: %CSI%<n>C              | CUF       | Cursor Forward                  | Cursor forward (Right) by <n>.
:: %CSI%<n>D              | CUB       | Cursor Backward                 | Cursor backward (Left) by <n>.
:: %CSI%<n>E              | CNL       | Cursor Next Line                | Cursor down to beginning of <n>th line in the viewport.
:: %CSI%<n>F              | CPL       | Cursor Previous Line            | Cursor up to beginning of <n>th line in the viewport.
:: %CSI%<n>G              | CHA       | Cursor Horizontal Absolute      | Cursor moves to <n>th position horizontally in the current line.
:: %CSI%<n>d              | VPA       | Vertical Line Position Absolute | Cursor moves to the <n>th position vertically in the current column.
:: %CSI%<y>;<x>H          | CUP       | Cursor Position                 | Cursor moves to <x>, <y> coordinate within the viewport, where <x> is the column of the <y> line.
:: %CSI%<y>;<x>f          | HVP       | Horizontal Vertical Position    | Cursor moves to <x>, <y> coordinate within the viewport, where <x> is the column of the <y> line.
:: %CSI%<n>S              | SU        | Scroll Up                       | Scroll text up by <n>. Also known as pan down, new lines fill in from the bottom of the screen.
:: %CSI%<n>T              | SD        | Scroll Down                     | Scroll down by <n>. Also known as pan up, new lines fill in from the top of the screen.
:: %CSI%<n>@              | ICH       | Insert Character                | Insert <n> spaces at the current cursor position, shifting all existing text to the right. Text exiting the screen to the right is removed.
:: %CSI%<n>P              | DCH       | Delete Character                | Delete <n> characters at the current cursor position, shifting in space characters from the right edge of the screen.
:: %CSI%<n>X              | ECH       | Erase Character                 | Erase <n> characters from the current cursor position by overwriting them with a space character.
:: %CSI%<n>L              | IL        | Insert Line                     | Inserts <n> lines into the buffer at the cursor position. The line the cursor is on, and lines below it, will be shifted downwards.
:: %CSI%<n>M              | DL        | Delete Line                     | Deletes <n> lines from the buffer, starting with the row the cursor is on.
:: %CSI%<n>J              | ED        | Erase in Display                | Replace all text in the current viewport/screen specified by erase mode <n> with space characters.
:: %CSI%<n>K              | EL        | Erase in Line                   | Replace all text on the line with the cursor specified by erase mode <n> with space characters.
:: %CSI%<n>I              | CHT       | Cursor Horizontal (Forward) Tab | Advance the cursor to the next column (in the same row) with a tab stop. If there are no more tab stops, move to the last column in the row. If the cursor is in the last column, move to the first column of the next row.
:: %CSI%<n>Z              | CBT       | Cursor Backwards Tab            | Move the cursor to the previous column (in the same row) with a tab stop. If there are no more tab stops, moves the cursor to the first column. If the cursor is in the first column, doesn’t move the cursor.
:: %CSI%<t>;<b>r          | DECSTBM   | Set Scrolling Region            | Sets the VT scrolling margins of the viewport.
:: %OSC%0;<s>%BEL%        |           | Set Icon and Window Title       | Sets the console window’s title to <s> (string).
:: %OSC%2;<s>%BEL%        |           | Set Window Title                | Sets the console window’s title to <s> (string).
:: %CSI%38;5;<s>m         | SGR       | Foreground Extended             | Applies extended foreground color to <s> index in 88 or 256 color table.
:: %CSI%48;5;<s>m         | SGR       | Background Extended             | Applies extended background color to <s> index in 88 or 256 color table.
:: %CSI%38;2;<r>;<g>;<b>m | SGR       | Foreground Extended             | Applies extended foreground color to RGB value specified in <r>, <g>, <b> parameters.
:: %CSI%48;2;<r>;<g>;<b>m | SGR       | Background Extended             | Applies extended background color to RGB value specified in <r>, <g>, <b> parameters.

:: Erase mode | Behavior
:: ---------- | --------
::          0 | Erases from the current cursor position (inclusive) to the end of the line/display.
::          1 | Erases from the beginning of the line/display up to and including the current cursor position.
::          2 | Erases the entire line/display.
