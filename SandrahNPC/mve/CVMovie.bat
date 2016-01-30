@echo off
@ECHO Installing movies

mkdir SandrahNPC\backup\Chitin-Key
copy chitin.key SandrahNPC\backup\Chitin-Key
mkdir CVMovie
copy SandrahNPC\mve\CVHell1.mve CVMovie
copy SandrahNPC\mve\CVSarde.mve CVMovie
copy SandrahNPC\mve\CVJonde.mve CVMovie
copy SandrahNPC\mve\ToThay.mve CVMovie
copy SandrahNPC\mve\RTFinit.mve CVMovie
copy Setup-SandrahNPC.exe CVMovie.exe
CVMovie --make-biff CVMovie
del CVMovie.exe
rmdir CVMovie /S /Q

@ECHO Finished installing movies