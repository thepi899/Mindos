@echo off
echo.
echo                                             MINDOS INSTALLATION
echo.
echo Danke Das sie sich für Mindos Entschieden Haben. Bitte Druecken sie die "1" um die Installation
echo Zu starten, oder die "2" um den Vorgang Abzubrechen. Der Vorgang sollte nur Wenige Sekunden Dauern.
echo Viel Spaß, Das MINDOS Team!
echo.
set /p asw=Bitte auswahl angeben: 

if %asw%==1 goto Install
if %asw%==2 goto END
goto END

:Install
cls
echo.
echo INSTALLATION VON MINDOS
echo.
echo Installation gestartet.
xcopy \Mindos.bat C:\
xcopy \Datenbank C:\ /s
rename "C:\Mindos.bat" "C:\autoexec.bat"
echo.
echo Fertig! sie können Jetzt Neustarten.
pause