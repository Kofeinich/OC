@echo off
forfiles /P "C:\WINDOWS" /C "cmd /c if @fsize GEQ 2097152 copy @path \%computername%\t /Z /Y" 
