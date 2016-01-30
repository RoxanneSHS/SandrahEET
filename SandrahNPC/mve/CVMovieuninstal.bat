@echo off
@ECHO Uninstalling movies
copy Setup-SandrahNPC.exe CVMovie.exe
CVMovie --remove-biff data\CVMovie.bif
del CVMovie.exe
del data\CVMovie.bif /F /Q
del SandrahNPC\backup\Chitin-Key /F /Q
@ECHO Finished uninstalling movies