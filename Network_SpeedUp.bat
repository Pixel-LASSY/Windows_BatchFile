@echo off

rem IP_Reset
netsh int ip reset

rem WinSock_Reset
netsh winsock reset

rem Flush_DNS
ipconfig /flushdns