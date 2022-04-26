@echo off

rem Temp_Delete
cd C:\Windows
del /q Temp

rem %Temp%_Delete
cd %Temp%
del /q %Temp%

rem Prefetch_Delete
cd C:\Windows
del /q Prefetch

rem InterNetCache_Delete
del /Q C:\Users\%username%\AppData\Local\Microsoft\Windows\INetCache\IE\*.*

rem DownloadProgramFiles_Delete
del /Q C:\Windows\Downloaded Program Files\*.*

rem RecycleBin_Delete
rd /s /q %SYSTEMDRIVE%\$Recycle.bin

rem WindowsUpdate_Clear
cd C:\Windows
del /q SoftwareDistribution

rem Windows_Thumbnails_Cache
cd C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer
del /q thumbcache_*.db

rem Windows_Icon_Cache
cd C:\Users\%USERNAME%\AppData\Local\
del /a:h /q IconCache.db

rem Windows_Log_Delete
cd C:\
del /s *.log

rem 
cd C:\Windows
del /q SystemTemp

rem StartComponentCleanup
Dism.exe /online /Cleanup-Image /StartComponentCleanup

rem StartComponentCleanup_ResetBase
Dism.exe /online /Cleanup-Image /StartComponentCleanup /ResetBase

rem SPSuperseded
Dism.exe /online /Cleanup-Image /SPSuperseded

rem DNS_Cache_Clear
ipconfig /flushdns

rem MicrosoftStore_Cache_Clear
wsreset.exe

rem Defrag
defrag c: