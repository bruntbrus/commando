@echo off
setlocal

:: Print a string of text in extra large letters.

if [%1] NEQ [] goto s_start

echo Usage: banner "string"
goto :eof

:s_start
    set _length=0
    set _sentence=%*

    :: Get the length of the sentence
    set _substring=%_sentence%
:s_loop
    if not defined _substring goto :s_result

    ::remove the first char from _substring (until it is null)
    set _substring=%_substring:~1%
    set /A _length+=1
    goto s_loop

:s_result
    set /A _length-=1

    :: Truncate text to fit the window size
    :: assuming average char is 6 digits wide
    for /f "tokens=2" %%G in ('mode ^|find "Columns"') do set/a _window=%%G/6
    if %_length% GTR %_window% set _length=%_window% 

    :: Step through each digit of the sentence and store in a set of variables
    for /L %%G IN (0,1,%_length%) DO call :s_build %%G

:: Now echo all the variables
echo %_1%
echo %_2%
echo %_3%
echo %_4%
echo %_5%
echo %_6%
echo %_7%
goto :eof

:s_build
    :: get the next character
    call set _digit=%%_sentence:~%1,1%%%
    :: Add the graphics for this digit to the variables
    if "%_digit%"==" " (call :s_space) else (call :s_%_digit%)
goto :eof

::  Pad digits to -->
:s_0
    (set _1=%_1% ####)
    (set _2=%_2% #  #)
    (set _3=%_3% #  #)
    (set _4=%_4% #  #)
    (set _5=%_5% #  #)
    (set _6=%_6% #  #)
    (set _7=%_7% ####)
goto :eof

:s_1
::  Pad digits to -->
    (set _1=%_1%  ## )
    (set _2=%_2%   # )
    (set _3=%_3%   # )
    (set _4=%_4%   # )
    (set _5=%_5%   # )
    (set _6=%_6%   # )
    (set _7=%_7% ####)
goto :eof

:s_2
::  Pad digits to -->
    (set _1=%_1% ####)
    (set _2=%_2% #  #)
    (set _3=%_3%    #)
    (set _4=%_4% ####)
    (set _5=%_5% #   )
    (set _6=%_6% #  #)
    (set _7=%_7% ####)
goto :eof

:s_3
::  Pad digits to -->
    (set _1=%_1% ####)
    (set _2=%_2%    #)
    (set _3=%_3%    #)
    (set _4=%_4% ####)
    (set _5=%_5%    #)
    (set _6=%_6%    #)
    (set _7=%_7% ####)
goto :eof

:s_4
::  Pad digits to -->
    (set _1=%_1% #  #)
    (set _2=%_2% #  #)
    (set _3=%_3% #  #)
    (set _4=%_4% ####)
    (set _5=%_5%    #)
    (set _6=%_6%    #)
    (set _7=%_7%    #)
goto :eof

:s_5
::  Pad digits to -->
    (set _1=%_1% ####)
    (set _2=%_2% #   )
    (set _3=%_3% #   )
    (set _4=%_4% ####)
    (set _5=%_5%    #)
    (set _6=%_6% #  #)
    (set _7=%_7% ####)
goto :eof

:s_6
::  Pad digits to -->
    (set _1=%_1% ##  )
    (set _2=%_2% #   )
    (set _3=%_3% #   )
    (set _4=%_4% ####)
    (set _5=%_5% #  #)
    (set _6=%_6% #  #)
    (set _7=%_7% ####)
goto :eof

:s_7
::  Pad digits to -->
    (set _1=%_1% ####)
    (set _2=%_2% #  #)
    (set _3=%_3%    #)
    (set _4=%_4%   ##)
    (set _5=%_5%   # )
    (set _6=%_6%   # )
    (set _7=%_7%   # )
goto :eof

:s_8
::  Pad digits to -->
    (set _1=%_1% ####)
    (set _2=%_2% #  #)
    (set _3=%_3% #  #)
    (set _4=%_4% ####)
    (set _5=%_5% #  #)
    (set _6=%_6% #  #)
    (set _7=%_7% ####)
goto :eof

:s_9
::  Pad digits to -->
    (set _1=%_1% ####)
    (set _2=%_2% #  #)
    (set _3=%_3% #  #)
    (set _4=%_4% ####)
    (set _5=%_5%    #)
    (set _6=%_6%    #)
    (set _7=%_7%    #)
goto :eof

:s_-
::  Pad digits to -->
    (set _1=%_1%     )
    (set _2=%_2%     )
    (set _3=%_3%     )
    (set _4=%_4% ####)
    (set _5=%_5%     )
    (set _6=%_6%     )
    (set _7=%_7%     )
goto :eof

:s_.
::  Pad digits to -->
    (set _1=%_1%     )
    (set _2=%_2%     )
    (set _3=%_3%     )
    (set _4=%_4%     )
    (set _5=%_5%     )
    (set _6=%_6%     )
    (set _7=%_7%  #  )
goto :eof

:s_a
::  Pad digits to -->
    (set _1=%_1%  ## )
    (set _2=%_2% #  #)
    (set _3=%_3% #  #)
    (set _4=%_4% ####)
    (set _5=%_5% #  #)
    (set _6=%_6% #  #)
    (set _7=%_7% #  #)
goto :eof

:s_b
::  Pad digits to -->
    (set _1=%_1% ### )
    (set _2=%_2% #  #)
    (set _3=%_3% #  #)
    (set _4=%_4% ####)
    (set _5=%_5% #  #)
    (set _6=%_6% #  #)
    (set _7=%_7% ### )
goto :eof

:s_c
::  Pad digits to -->
    (set _1=%_1%  ## )
    (set _2=%_2% #  #)
    (set _3=%_3% #   )
    (set _4=%_4% #   )
    (set _5=%_5% #   )
    (set _6=%_6% #  #)
    (set _7=%_7%  ## )
goto :eof

:s_d
::  Pad digits to -->
    (set _1=%_1% ### )
    (set _2=%_2% #  #)
    (set _3=%_3% #  #)
    (set _4=%_4% #  #)
    (set _5=%_5% #  #)
    (set _6=%_6% #  #)
    (set _7=%_7% ### )
goto :eof

:s_e
::  Pad digits to -->
    (set _1=%_1% ####)
    (set _2=%_2% #   )
    (set _3=%_3% #   )
    (set _4=%_4% ### )
    (set _5=%_5% #   )
    (set _6=%_6% #   )
    (set _7=%_7% ####)
goto :eof

:s_f
::  Pad digits to -->
    (set _1=%_1% ####)
    (set _2=%_2% #   )
    (set _3=%_3% #   )
    (set _4=%_4% ### )
    (set _5=%_5% #   )
    (set _6=%_6% #   )
    (set _7=%_7% #   )
goto :eof

:s_g
::  Pad digits to -->
    (set _1=%_1%  ## )
    (set _2=%_2% #  #)
    (set _3=%_3% #   )
    (set _4=%_4% #   )
    (set _5=%_5% # ##)
    (set _6=%_6% #  #)
    (set _7=%_7%  ## )
goto :eof

:s_h
::  Pad digits to -->
    (set _1=%_1% #  #)
    (set _2=%_2% #  #)
    (set _3=%_3% #  #)
    (set _4=%_4% ####)
    (set _5=%_5% #  #)
    (set _6=%_6% #  #)
    (set _7=%_7% #  #)
goto :eof

:s_i
::  Pad digits to -->
    (set _1=%_1%  # )
    (set _2=%_2%  # )
    (set _3=%_3%  # )
    (set _4=%_4%  # )
    (set _5=%_5%  # )
    (set _6=%_6%  # )
    (set _7=%_7%  # )
goto :eof

:s_j
::  Pad digits to -->
    (set _1=%_1% ####)
    (set _2=%_2%   # )
    (set _3=%_3%   # )
    (set _4=%_4%   # )
    (set _5=%_5%   # )
    (set _6=%_6%   # )
    (set _7=%_7% ##  )
goto :eof

:s_k
::  Pad digits to -->
    (set _1=%_1% #   )
    (set _2=%_2% #  #)
    (set _3=%_3% # # )
    (set _4=%_4% ##  )
    (set _5=%_5% ##  )
    (set _6=%_6% # # )
    (set _7=%_7% #  #)
goto :eof

:s_l
::  Pad digits to -->
    (set _1=%_1% #   )
    (set _2=%_2% #   )
    (set _3=%_3% #   )
    (set _4=%_4% #   )
    (set _5=%_5% #   )
    (set _6=%_6% #   )
    (set _7=%_7% ####)
goto :eof

:s_m
::  Pad digits to --->
    (set _1=%_1% #   #)
    (set _2=%_2% ## ##)
    (set _3=%_3% # # #)
    (set _4=%_4% # # #)
    (set _5=%_5% #   #)
    (set _6=%_6% #   #)
    (set _7=%_7% #   #)
goto :eof

:s_n
::  Pad digits to --->
    (set _1=%_1% #   #)
    (set _2=%_2% ##  #)
    (set _3=%_3% ##  #)
    (set _4=%_4% # # #)
    (set _5=%_5% #  ##)
    (set _6=%_6% #  ##)
    (set _7=%_7% #   #)
goto :eof

:s_o
::  Pad digits to -->
    (set _1=%_1%  ## )
    (set _2=%_2% #  #)
    (set _3=%_3% #  #)
    (set _4=%_4% #  #)
    (set _5=%_5% #  #)
    (set _6=%_6% #  #)
    (set _7=%_7%  ## )
goto :eof

:s_p
::  Pad digits to -->
    (set _1=%_1% ### )
    (set _2=%_2% #  #)
    (set _3=%_3% #  #)
    (set _4=%_4% ### )
    (set _5=%_5% #   )
    (set _6=%_6% #   )
    (set _7=%_7% #   )
goto :eof

:s_q
::  Pad digits to -->
    (set _1=%_1%  ## )
    (set _2=%_2% #  #)
    (set _3=%_3% #  #)
    (set _4=%_4% #  #)
    (set _5=%_5% #  #)
    (set _6=%_6% # ##)
    (set _7=%_7%  # #)
goto :eof

:s_r
::  Pad digits to -->
    (set _1=%_1% ### )
    (set _2=%_2% #  #)
    (set _3=%_3% #  #)
    (set _4=%_4% ### )
    (set _5=%_5% # # )
    (set _6=%_6% #  #)
    (set _7=%_7% #  #)
goto :eof

:s_s
::  Pad digits to -->
    (set _1=%_1%  ###)
    (set _2=%_2% #   )
    (set _3=%_3% #   )
    (set _4=%_4%  ## )
    (set _5=%_5%    #)
    (set _6=%_6%    #)
    (set _7=%_7% ### )
goto :eof

:s_t
::  Pad digits to -->
    (set _1=%_1% ###)
    (set _2=%_2%  # )
    (set _3=%_3%  # )
    (set _4=%_4%  # )
    (set _5=%_5%  # )
    (set _6=%_6%  # )
    (set _7=%_7%  # )
goto :eof

:s_u
::  Pad digits to -->
    (set _1=%_1% #  #)
    (set _2=%_2% #  #)
    (set _3=%_3% #  #)
    (set _4=%_4% #  #)
    (set _5=%_5% #  #)
    (set _6=%_6% #  #)
    (set _7=%_7%  ## )
goto :eof

:s_v
::  Pad digits to --->
    (set _1=%_1% #   #)
    (set _2=%_2% #   #)
    (set _3=%_3% #   #)
    (set _4=%_4% #   #)
    (set _5=%_5% #   #)
    (set _6=%_6%  # # )
    (set _7=%_7%   #  )
goto :eof

:s_w
::  Pad digits to ----->
    (set _1=%_1% #  #  #)
    (set _2=%_2% #  #  #)
    (set _3=%_3% #  #  #)
    (set _4=%_4% #  #  #)
    (set _5=%_5% #  #  #)
    (set _6=%_6% #  #  #)
    (set _7=%_7%  ## ## )
goto :eof

:s_x
::  Pad digits to -->
    (set _1=%_1%      )
    (set _2=%_2% #   #)
    (set _3=%_3%  # # )
    (set _4=%_4%   #  )
    (set _5=%_5%   #  )
    (set _6=%_6%  # # )
    (set _7=%_7% #   #)
goto :eof

:s_y
::  Pad digits to --->
    (set _1=%_1% #   #)
    (set _2=%_2%  # # )
    (set _3=%_3%   #  )
    (set _4=%_4%   #  )
    (set _5=%_5%   #  )
    (set _6=%_6%   #  )
    (set _7=%_7%   #  )
goto :eof

:s_z
::  Pad digits to --->
    (set _1=%_1% #####)
    (set _2=%_2%     #)
    (set _3=%_3%    # )
    (set _4=%_4%   #  )
    (set _5=%_5%  #   )
    (set _6=%_6% #    )
    (set _7=%_7% #####)
goto :eof

:s_space
::  Pad digits to --->
    (set _1=%_1%      )
    (set _2=%_2%      )
    (set _3=%_3%      )
    (set _4=%_4%      )
    (set _5=%_5%      )
    (set _6=%_6%      )
    (set _7=%_7%      )
goto :eof
