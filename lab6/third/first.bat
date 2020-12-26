@echo off
sc query type=service state=all > service.txt
second.bat