@echo off

rem IP_Reset
netsh int ip reset

rem WinSock_Reset
netsh winsock reset

rem Flush_DNS
ipconfig /flushdns

rem RSS_Disabled
netsh int tcp set global rss=disabled

rem Netdma=Disabled
netsh int tcp set global netdma=disabled

rem AutoTuningLevel=Highlyrestricted
netsh interface tcp set global autotuninglevel=highlyrestricted