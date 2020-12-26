fc /B C:\Windows%1 \%computername%\temp%1 > nul
if %errorlevel% == 0 (
    echo " same files "
) else (
    echo " different files "
)