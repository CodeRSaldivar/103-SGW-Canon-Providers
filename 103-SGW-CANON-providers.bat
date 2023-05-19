mkdir c:\Users\Public\.temp\

::https://raw.githubusercontent.com/CodeRSaldivar/103-SGW-Canon-Providers/main/MF264dw.zip.001

C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Unrestricted -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/CodeRSaldivar/103-SGW-Canon-Providers/main/MF264dw.zip.001' -OutFile 'c:\Users\Public\.temp\MF264dw.zip.001'"
C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Unrestricted -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/CodeRSaldivar/103-SGW-Canon-Providers/main/MF264dw.zip.002' -OutFile 'c:\Users\Public\.temp\MF264dw.zip.002'"


copy /y c:\Users\Public\.temp\MF264dw.zip.001 /B + c:\Users\Public\.temp\MF264dw.zip.002 /B c:\Users\Public\.temp\MF264dw.zip /B


C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Unrestricted -command "Expand-Archive -Path '.\MF264dw.zip' -DestinationPath 'c:\Users\Public\.temp\'"


del /F /Q c:\Users\Public\.temp\MF264dw.zip.001
del /F /Q c:\Users\Public\.temp\MF264dw.zip.002
del /F /Q c:\Users\Public\.temp\MF264dw.zip


C:\Windows\System32\Cscript.exe C:\Windows\System32\Printing_Admin_Scripts\en-US\Prnport.vbs -a -r CANON-providers-ip-Port -h 10.102.216.232 -o lpr -n 515 -q print -y public -i 1


C:\Windows\System32\Cscript.exe C:\Windows\System32\Printing_Admin_Scripts\en-US\prndrvr.vbs -a -m "Canon Generic Plus PCL6" -e "Windows x64" -i c:\Users\Public\.temp\MF264dw\Driver\CNP60MA64.INF -h c:\Users\Public\.temp\MF264dw\Driver


C:\Windows\System32\Cscript.exe C:\Windows\System32\Printing_Admin_Scripts\en-US\prnmngr.vbs -a -m "Canon Generic Plus PCL6" -r CANON-providers-ip-Port -p "103 (SGW) Providers CANON imageCLASS MF264dw II"


C:\Windows\System32\rundll32.exe printui.dll,PrintUIEntry /y /n "103 (SGW) Providers CANON imageCLASS MF264dw II"

echo.

echo.

echo Done!!!


:: C:\Windows\system32\WindowsPowerShell\v1.0\powershell.exe -ExecutionPolicy Unrestricted -command "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/CodeRSaldivar/103-SGW-Canon-Providers/main/canon_providers.bat' -OutFile '.\103-SGW-CANON-providers.bat'"
