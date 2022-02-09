
@echo off
setlocal enabledelayedexpansion

echo Type a url to go to filter it;s source code from html tags

set /p id=Enter address: 
echo  running at %id%
curl %id% --output temp.txt
set /p d=<temp.txt
type temp.txt|repl "<.*?>|</.*?>" #>t2.txt
type t2.txt|repl "#" " " >out.txt
type out.txt
pause