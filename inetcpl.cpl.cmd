REM Habilita Proxy
REM reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f

REM Desabilita Proxy
REM reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f

REM Muda o endereço do proxy
REM reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d proxyserveraddress:proxyport /f

REM Ver interfaces de rede
REM netsh interface show interface

REM Exemplo: 
REM Admin State    State          Type             Interface Name
REM -------------------------------------------------------------------------
REM Enabled        Connected      Dedicated        Wi-Fi
REM Enabled        Disconnected   Dedicated        Ethernet

REM Habilita interface
REM netsh interface set interface "Wi-Fi" admin=enable

REM Desabilita interface
REM netsh interface set interface "Wi-Fi" admin=disable
