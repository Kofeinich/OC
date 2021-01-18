@echo off
schtasks /create /TN "script3" /TR "D:\lab6\second\script_2.bat" /SC ONCE /ST %1