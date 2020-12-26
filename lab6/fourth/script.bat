@echo off
sc query type=driver state=all /fo table > buffer.txt
sort /R < buffer.txt > answer.txt