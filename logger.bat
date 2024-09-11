@echo off
setlocal enabledelayedexpansion

:: ANSI 颜色代码
set COLOR_BLACK=[30m>nul
set COLOR_BLUE=[34m>nul
set COLOR_CYAN=[36m>nul
set COLOR_GREEN=[32m>nul
set COLOR_PURPLE=[35m>nul
set COLOR_RED=[31m>nul
set COLOR_WHITE=[37m>nul
set COLOR_YELLOW=[33m>nul
set COLOR_BRIGHTBLACK=[1;30m>nul
set COLOR_BRIGHTBLUE=[1;34m>nul
set COLOR_BRIGHTCYAN=[1;36m>nul
set COLOR_BRIGHTGREEN=[1;32m>nul
set COLOR_BRIGHTPURPLE=[1;35m>nul
set COLOR_BRIGHTRED=[1;31m>nul
set COLOR_BRIGHTWHITE=[1;37m>nul
set COLOR_BRIGHTYELLOW=[1;33m>nul
set COLOR_BG_BLACK=[40m>nul
set COLOR_BG_BLUE=[44m>nul
set COLOR_BG_CYAN=[46m>nul
set COLOR_BG_GREEN=[42m>nul
set COLOR_BG_PURPLE=[45m>nul
set COLOR_BG_RED=[41m>nul
set COLOR_BG_WHITE=[47m>nul
set COLOR_BG_YELLOW=[43m>nul
set COLOR_RESET=[0m>nul


:: 使用示例
call :INFO "this is a info message"
echo this is a test
call :WARNING "this is a warning message"
call :ERROR "this is a error message"

goto :EOF
:: 如果作为库使用，请注释掉上面的示例调用
:: 并在其他脚本中使用 call logger.bat 来调用这些函数

:INFO
call :TO_CONSOLE "[INFO]" "%~1" "!COLOR_GREEN!"
exit /b

:WARNING
call :TO_CONSOLE "[WARNING]" "%~1" "!COLOR_YELLOW!"
exit /b

:ERROR
call :TO_CONSOLE "[ERROR]" "%~1" "!COLOR_RED!"
exit /b

:TO_CONSOLE
set "prefix=%~1"
set "message=%~2"
set "color=%~3"

echo !color!!prefix! !message!!COLOR_RESET!

exit /b
