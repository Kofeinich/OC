net stop dnscache
timeout /t 5
sc query type=service state=all > buffer.txt
third.bat