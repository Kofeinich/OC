net stop dnscache
timeout /t 15
sc query type=service state=all > buf.txt
third.bat
