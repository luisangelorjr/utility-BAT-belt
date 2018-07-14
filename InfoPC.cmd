echo off
cls
rem script em criação para coletar dados
cls
md c:\larjr
wmic /output:c:\larjr\InstalledSoftwareList.txt product get name, version
wmic /output:c:\larjr\SerialNumber.txt bios get serialnumber
wmic /output:c:\larjr\UserInLogin.txt computersystem get username

rem Obter toda a Informação sobre a CPU
wmic /output:c:\larjr\InfoCPU.txt CPU get /all /format:LIST

rem Obter toda a Informação sobre as interfaces de REDES
wmic /output:c:\larjr\InterNetworks.txt NICCONFIG get /all /format:LIST

rem Obter toda a Informação sobre o Sistema
wmic /output:c:\larjr\InfoSystem.txt COMPUTERSYSTEM get /all /format:LIST

rem Obter toda a Informação sobre os discos.
wmic /output:c:\larjr\InfoDisks.txt DISKDRIVE get /all /format:LIST

rem Obter toda a Informação sobre os discos logicos
wmic /output:c:\larjr\InfoLogicalDisks.txt LOGICALDISK get /all /format:LIST

rem Obter toda a Informação sobre as memorias.
wmic /output:c:\larjr\InfoMemory.txt MEMPHYSICAL get /all /format:LIST

rem Obter toda a Informação sobre os serviços.
wmic /output:c:\larjr\InfoServices.txt SERVICE get /all /format:LIST

rem Obter toda a Informação sobre os processos.
wmic /output:c:\larjr\InfoProcess.txt PROCESS get /all /format:LIST

rem Obter toda a Informação sobre os  programas que iniciam junto com Windows.
wmic /output:c:\larjr\InfoStartupPrograms.txt STARTUP get /all /format:LIST

rem Obter toda a Informação sobre a motherboard.
wmic /output:c:\larjr\InfoMotherboard.txt ONBOARDDEVICE get /all /format:LIST

rem Obter toda a Informação sobre o Sistema Operacional.
wmic /output:c:\larjr\InfoSO.txt RECOVEROS get /all /format:LIST

start c:\larjr

rem Fontes:
rem http://blog.adminderedes.com.br/wmic-ferramenta-poderosa-e-facil-de-usar/
rem https://blogs.technet.microsoft.com/askperf/2012/02/17/useful-wmic-queries/
rem https://betanews.com/2011/01/14/wmic-the-best-command-line-tool-you-ve-never-used/
