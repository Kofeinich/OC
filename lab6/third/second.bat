net stop dnscache
timeout /t 15
sc query type=service state=all > buffer.txt
third.bat
