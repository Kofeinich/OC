@echo off
wmic logicaldisk get Size,FreeSpace > infodisk.txt
wmic logicaldisk list breaf > listdisk.txt
ver > version.txt
mkdir TEST
copy /y "D:\lab6\first\*.*" "D:\lab6\first\TEST\*.*"
copy /y "D:\lab6\first\TEST\*.*" "D:\lab6\first\output.txt"
for /f "skip=1" %A IN (dir TEST /b/a-d/o-d:c) do del ".TEST\%~A"