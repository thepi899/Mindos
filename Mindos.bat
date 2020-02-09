@echo off
title Mindos
mode con lines=23 cols=85
:Bootmenue
start "Datenbank\Programme\wmplayer.exe" "Datenbank\sounds\start.wav"
cls
for /L %%A in (4,-1,0) do (
ping localhost -n 2 >nul
cls
)
TASKKILL /IM wmplayer.exe /F
color a
cls
:::   __  __ _           _           
:::  |  \/  (_)         | |          
:::  | \  / |_ _ __   __| | ___  ___ 
:::  | |\/| | | '_ \ / _` |/ _ \/ __|
:::  | |  | | | | | | (_| | (_) \__ \
:::  |_|  |_|_|_| |_|\__,_|\___/|___/
:::

for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
echo Systemanforderungen: Windows 3.11, 10mb ram 
pause
:User
title Mindos/Anmeldung
cls
echo.
set /P benutzer=Bitte geben sie den benutzernamen ein:  

if %benutzer%==Benutzer1 goto pas
if %benutzer%==Benutzer2 goto pas
goto User
:pas
title Mindos/Passwort
echo.
echo "Passwort: 1234" > Datenbank/Benutzer/Benutzer1.txt
set /P pw=Bitte geben sie das Kennwort ein: 

if %pw%==1234 goto pr
if %pw%==4321 goto pr
goto User
:pr
cls
echo.
if exist Datenbank\Benutzer\Benutzer1.txt goto Sprache
if exist Datenbank\Benutzer\Benutzer2.txt goto Sprache
if exist Datenbank\Benutzer\Benutzer3.txt goto Sprache
goto User
:Sprache
title Mindos/Sprache
cls
echo.
color b
echo (1) Deutsch
echo (2) Englisch
echo (3) Französisch
set asw=0
set /p asw="Bitte Sprache wählen: "

if %asw%==1 goto Hauptmenue
if %asw%==2 goto Hauptmenue(en)
if %asw%==3 goto Hauptmenue(fr)
goto Sprache

:Hauptmenue
title MINDOS/Hauptmenue
cls
color 3
echo                  10.8                          %time%
echo ------------------------------------------------------------------------------------
echo                                 Mindos Hauptmenue                %date%
echo ------------------------------------------------------------------------------------
echo Vielen Dank fuer denn erwerb von Mindos.Als erstes druecken sie bitte die 4,
echo um in Das Aktievirungs menue zu kommen. ein Handbuch finden sie In dem Ordner
echo mindos_data. Viel Spass!
echo Wählen sie im Menue einen Punkt aus.
echo.
echo [1] mspaint
echo [2] Mindos Updates
echo [3] Version
echo [4] Mindos Aktievieren
echo [5] Alle Apps
echo [6] standby
echo [7] Bootmenue
echo [8] Credits
echo [9] Sprach auswahl menue
echo [10] Einstelungen
echo zum Beenden von Mindos bitte "beenden" eingeben.
echo.

set asw=0
set /p asw="Bitte Auswahl eingeben: "

echo ------------------------------------------------------------------------------------
echo                  **** Funktioniert nur in Verbindung mit Windows ****
echo ------------------------------------------------------------------------------------

if %asw%==1 goto mspaint
if %asw%==2 goto Mindos Updates
if %asw%==3 goto Version
if %asw%==beenden goto END
if %asw%==4 goto activation
if %asw%==5 goto Alle Apps
if %asw%==6 goto standby
if %asw%==7 goto Bootmenue
if %asw%==bs goto bluescreen
if %asw%==8 goto credits
if %asw%== 9 goto Sprache
if %asw%==10 goto settings
goto Hauptmenue

:mspaint
cls
echo.
echo paint wird gestartet...
C:\Windows\system32\mspaint.exe
echo.
pause
goto Hauptmenue

:Mindos Updates
cls
echo.
echo ------------------------------------------------------------------------------------
echo                                   Mindos Update
echo ------------------------------------------------------------------------------------
echo.
echo Die Version wird geprueft...
for /L %%A in (4,-1,0) do (
ping localhost -n 2 >nul
)
goto update
pause
goto Hauptmenue

:Version
cls
color 2
echo.
echo ------------------------------------------------------------------------------------
echo                                Versions Informationen
echo ------------------------------------------------------------------------------------
echo.
echo Die Version ist: 10.8
echo Der Kernel ist 11.1
echo.
echo.
echo Versions Rueckblkick:
echo.
pause
goto version

:activation
cls
color e
echo ------------------------------------------------------------------------------------
echo                                Mindos Aktievierung
echo ------------------------------------------------------------------------------------
echo.
set asw=0
set /p asw="Bitte den acht stelligen Softwareschluessel eingeben: "
echo BINDESTRICHE BITTE AUCH EINGEBEN!!!!
if %asw%==AB1-NM2-444 goto fertig
if %asw%==exit goto Hauptmenue
goto fehler

:fertig
cls
color e
echo.
echo registrierung erfolgreich abgeschlossen!
echo.
pause
goto Hauptmenue

:Alle Apps
cls
echo.
echo ------------------------------------------------------------------------------------
echo                                    Alle apps
echo ------------------------------------------------------------------------------------
echo.
echo mspaint
echo Editor
echo YouTube
echo musik Player
echo Datei Explorer
echo Rechner
echo Konsole
echo Uhr
echo.
set asw=0
set /p asw="Bitte 1,2,3,...Eingeben: "

if %asw%==1 goto mspaint
if %asw%==2 goto notepad
if %asw%==3 goto YouTube
if %asw%==4 goto music
if %asw%==5 goto explorer
if %asw%==6 goto calc
if %asw%==7 goto com
if %asw%==8 goto clock
pause
goto Hauptmenue

:standby
cls
color a
echo.
echo.
echo.
echo dlkhflks
echo.
echo.
echo.
pause 
goto Hauptmenue

:notepad
cls
echo.
echo Text eingeben:
set /p variable=
@echo %variable% > Datenbank\Editor\Text.txt
echo.
pause
goto Hauptmenue

:update
cls
echo.
Datenbank\Update.bat
pause
goto Hauptmenue

:fehler
cls
echo Falscher Schlüssel, Bitte erneut versuchen
pause
goto activation

:not
cls
echo.
echo Dieser Browser wird zurzeit nicht Unterstützt :-(
echo.
pause
goto Hauptmenue

:YouTube1
cls
start microsoft-edge:https://youtube.com
pause
goto Hauptmenue

:YouTube
cls
set asw=0
set /p asw="Bitte den Browser eingeben(In Gross Buchstaben): "

if %asw%==EDGE goto YouTube1
goto not

:bluescreen
cls
color 1f
echo "Fehler 0x1234A" > Datenbank/Error.txt
echo.
echo.
echo.
echo ------------------------------------------------------------------------------------
echo                              ***Fehler*** 0x1234A
echo ------------------------------------------------------------------------------------
echo.
echo.
echo.
pause
goto Bootmenue

:version
cls
echo Alle Versionen:
echo.
echo 3.1 sprachen menue
echo 1.0.1 Besserer Versions überblick
echo release 1.0 Sehr viele Verbesserungen, Bluescreen Hinzugefügt ("bs" auf Start seite
echo eingeben), Erste Ofiziele Version
echo 0.3-beta Kernel Wurde Hinzugefügt
echo 0.2.6-beta Viele Verbesserungen
echo 0.1.1-beta Fehler im Hauptmenue Gefixt
echo 0.1-beta Installer hinzugefügt, Bugs gefixt
echo 0.0.9-alpha Update Instalation hinzugefuegt
echo 0.0.8.1-alpha Versions Menue wurde gefixt
echo 0.0.8-alpha Bootmenue Hinzugefuegt
echo 0.0.7.1-alpha Bug fixes
echo 0.0.7-alpha App "Editor" wurde Hinzugefuegt
echo 0.0.6.1-alpha Patch
echo 0.0.6-alpha Standby Modus Hinzugefuegt
echo 0.0.5-alpha Bug fixes und mindos data Ordner
echo 0.0.4-alpha Menues wurden ueberarbeitet
echo 0.0.3-alpha Menue Punkt "Alle Apps" wurde hinzugefuegt
echo 0.0.2-alpha aktievierung wurde Hinzugefuegt
echo 0.0.1-alpha Erste alpha Version
echo.
pause
goto Hauptmenue

:Hauptmenue(en)
cls
color 3
echo                   10.7.9                        Copyright 2020
echo.
echo ------------------------------------------------------------------------------------
echo                                 Mindos HomeMenue
echo ------------------------------------------------------------------------------------
echo Thank you for purchasing Mindos.At first please press 4,
echo to come in the activation menue.A manual you can find in the folder
echo mindos_data. much Fun!
echo select an operation.
echo.
echo [1] mspaint
echo [2] Mindos updates
echo [3] version
echo [4] activate Mindos
echo [5] all apps
echo [6] standby
echo [7] Bootmenue
echo [8] Credits
echo [9] lanagueselect menue
echo [10] settings
echo.
echo to shutdown Mindos please enter "end".

set asw=0
set /p asw="please enter your answer: "

if %asw%==1 goto mspaint(en)
if %asw%==2 goto Mindos Updates(en)
if %asw%==3 goto Version(en)
if %asw%==end goto END
if %asw%==4 goto activation(en)
if %asw%==5 goto Alle Apps(en)
if %asw%==6 goto standby
if %asw%==7 goto Bootmenue
if %asw%==bs goto bluescreen(en)
if %asw%==8 goto credits
if %asw%==9 goto Sprache
goto Hauptmenue(en)

:mspaint(en)
cls
echo.
echo paint is starting...
C:\Windows\system32\mspaint.exe
echo.
pause
goto Hauptmenue(en)

:Mindos Updates(en)
cls
echo.
echo ------------------------------------------------------------------------------------
echo                                   Mindos update
echo ------------------------------------------------------------------------------------
echo.
echo The Version is checked...
timeout /T 3
if Not exist Datenbank\Update.bat echo.
if exist Datenbank\Update.bat goto update(en)
echo The software is new!
echo.
pause
goto Hauptmenue(en)

:Version(en)
cls
color 2
echo.
echo ------------------------------------------------------------------------------------
echo                                version information
echo ------------------------------------------------------------------------------------
echo.
echo The Version is: 10.7.9
echo The Kernel is: 11.0.2
echo.
echo.
echo version Channellog:
echo.
pause
goto version(en)

:activation(en)
cls
color e
echo ------------------------------------------------------------------------------------
echo                                activating Mindos
echo ------------------------------------------------------------------------------------
echo.
set asw=0
set /p asw="Please enter the product Key: "

if %asw%==12345678 goto fertig
if %asw%==exit goto Hauptmenue
goto fehler(en)

:fertig(en)
cls
color e
echo.
echo activation finished!
pause
goto Hauptmenue(en)

:Alle Apps(en)
cls
echo.
echo ------------------------------------------------------------------------------------
echo                                    all apps
echo ------------------------------------------------------------------------------------
echo.
echo mspaint
echo Editor
echo YouTube
echo music player
echo File Explorer
echo.
set asw=0
set /p asw="Please enter 1,2,3,... : "

if %asw%==1 goto mspaint
if %asw%==2 goto notepad
if %asw%==3 goto YouTube
pause
goto Hauptmenue(en)

:standby
cls
color a
echo.
echo.
echo.
echo ------------------------------------------------------------------------------------
echo                                  Standby Modus
echo ------------------------------------------------------------------------------------
echo.
echo.
echo.
pause 
goto Hauptmenue

:notepad(en)
cls
echo.
echo enter Text:
set /p variable=
@echo %variable% >>"Datenbank\Editor\Text"
echo.
pause
goto Hauptmenue(en)

:update(en)
cls
Datenbank\Update.bat
cls
echo.
echo feinished!
pause
goto Hauptmenue(en)

:fehler(en)
cls
echo wrong Key, please try again
pause
goto activation(en)

:not(en)
cls
echo.
echo This browser is not supported at Time :-(
echo.
pause
goto Hauptmenue(en)

:YouTube1(en)
cls
start C:\FIREFOX\firefox.exe [b][/b]youtube.com
pause
goto Hauptmenue

:YouTube(en)
cls
set asw=0
set /p asw="Please enter the Bro´wsers name(in big letters): "

if %asw%==FIREFOX goto YouTube1
goto not(en)

:bluescreen(en)
cls
color 1f
echo.
echo.
echo.
echo ------------------------------------------------------------------------------------
echo                              ***Error*** 0x1234A
echo ------------------------------------------------------------------------------------
echo.
echo.
echo.
pause
goto Bootmenue

:version(en)
cls
echo This menue is in the Langue German
echo Alle Versionen:
echo.
echo 5.0.1-beta 
echo 3.1 Langue menue is new
echo 1.0.1 Besserer Versions überblick
echo release 1.0 Sehr viele Verbesserungen, Bluescreen Hinzugefügt ("bs" auf Start seite
echo eingeben), Erste Ofiziele Version
echo 0.3-beta Kernel Wurde Hinzugefügt
echo 0.2.6-beta Viele Verbesserungen
echo 0.1.1-beta Fehler im Hauptmenue Gefixt
echo 0.1-beta Installer hinzugefügt, Bugs gefixt
echo 0.0.9-alpha Update Instalation hinzugefuegt
echo 0.0.8.1-alpha Versions Menue wurde gefixt
echo 0.0.8-alpha Bootmenue Hinzugefuegt
echo 0.0.7.1-alpha Bug fixes
echo 0.0.7-alpha App "Editor" wurde Hinzugefuegt
echo 0.0.6.1-alpha Patch
echo 0.0.6-alpha Standby Modus Hinzugefuegt
echo 0.0.5-alpha Bug fixes und mindos data Ordner
echo 0.0.4-alpha Menues wurden ueberarbeitet
echo 0.0.3-alpha Menue Punkt "Alle Apps" wurde hinzugefuegt
echo 0.0.2-alpha aktievierung wurde Hinzugefuegt
echo 0.0.1-alpha Erste alpha Version
echo.
pause
goto Hauptmenue(en)

:credits
cls
echo.
echo lsztdlhnktzhdlkfzghdflukthbdluzktuhndglkdutnhsk,dfuhjnkifhdnluknztikljhgjdkhtnnkdhjs
echo kzbvfsdkjhgbfjdxkgbdfjkhdfzghhjdkygsbjkghbfdjkgfdbjghdbkjghngksdghdfkghkjgfghujdkfkk
echo kdfgbkjbftzuztitzuiorvutztuz56767985r678u8zhuzikuzikuiouzztuiztuhiztguhjztguziuziuzi
echo isghz89e7zr6terhi58r6thnzdufhrozuhnjdlkfzgzoihr5sualoiötueroluuz987tuoiflgoiutztztue
echo usdrdaszrtgbsoblgzdkuigzsur6we8756wuzirfseuztrfgsueitrhgsuftrvujsfztgsrd6uftdzufjfth
echo vjuztdrgtfhjesrtghjretdrghhgt5we4675467ezrtg57dgtzhejrsdjutrgsfujzrtsjzrtfreufuzrgfu
echo jkshgjkdhkbizhdjtgfztjkbmzvgmjgvdgvdvgfdgvfdddgdgbhgfgghgdfdghgfhzdgfhzdhghjzfgvhjzd
echo lsztdlhnktzhdlkfzghdflukthbdluzktuhndglkdutnhsk,dfuhjnkifhdnluknztikljhgjdkhtnnkdhjs
echo kzbvfsdkjhgbfjdxkgbdfjkhdfzghhjdkygsbjkghbfdjkgfdbjghdbkjghngksdghdfkghkjgfghujdkfkk
echo.
pause
goto Sprache

:settings
cls
echo.
echo ------------------------------------------------------------------------------------
echo                             Einstellungen
echo ------------------------------------------------------------------------------------
echo.
echo [1] sprach einstellungen
echo [2] beenden
echo [3] Benutzer hinzufügen
echo [4] Verbindung mit Wlan

set /p asw="Bitte auswahl angeben: "

if %asw%==1 goto Sprache
if %asw%==2 goto Hauptmenue
if %asw%==3 goto Add_user
if %asw%==4 goto net
goto settings

:settings(en)
cls
echo.
echo ------------------------------------------------------------------------------------
echo                                     settings
echo ------------------------------------------------------------------------------------
echo.
echo [1] lanague settings
echo [2] exit
echo [3] add User

set /p asw="Bitte auswahl angeben: "

if %asw%==1 goto Sprache
if %asw%==2 goto Hauptmenue(en)
if %asw%==3 goto Add_user(en)
goto settings(en)

:Add_user
cls
color f
echo.
echo verfügbare Benutzer:
echo Benutzer2
echo.
set /p nb="Benutzernamen eingeben:"

if %nb%==Benutzer2 echo "Passwort: 4321" > Datenbank/Benutzer/Benutzer2.txt

goto erfolg

:erfolg
cls
echo.
color e
echo.
echo Benutzer erfolgreich Hinzugefügt
echo.
pause
goto Hauptmenue

:music
cls
color 2
echo.
echo ------------------------------------------------------------------------------------
echo 				   	Musik Player
echo ------------------------------------------------------------------------------------
echo.
echo [1] *Fresh* Pop {Hip-Hop} instrumental {FL Studio}
echo [2] Fredji - Happy Life
echo.
echo exit beendet das programm
set /p asw="Bitte auswahl angeben: "

if %asw%==1 goto m1
if %asw%==2 goto m2
if %asw%==exit goto Hauptmenue
goto music

:m1
start Datenbank\sounds\1.mp3
color 3
cls
echo.
echo Jetzt spielt: *Fresh* Pop {Hip-Hop} instrumental {FL Studio} 
echo.
pause
TASKKILL /IM wmplayer.exe /F
goto music

:m2
start Datenbank\sounds\2.mp3
color 3
cls
echo.
echo Jetzt spielt: Fredji - Happy Life
echo.
pause
TASKKILL /IM wmplayer.exe /F
goto music

:explorer
cls
cd Datenbank\Editor
dir
set /p asw="Bitte datei zum öffnen angeben: "

if %asw%==Text goto e1
pause
goto Hauptmenue

:net
cls
color 4
echo.
echo Bitte wählen sie ein wlan Netzwerk aus der unten stehenden Liste aus.
echo.
echo (1) GEILONetz
echo (2) LAN Verbindung Herstellen
echo (3) Net123
echo (4) Mindos-net
echo.
set /p asw="Auswahl: "

if %asw%==1 goto net1

:net1
cls
echo.
set /p psw="Bitte Passwort eingeben: "

if %psw%==Passwort goto erfolg
goto Hauptmenue

:e1
cls
cd Datenbank\Editor
for /f "delims=" %%i in (Text.txt) do echo Quellordner: %%i
pause goto explorer

:Hauptmenue(fr)
cls
echo.
echo Ce menu est encore en construction.
echo.
pause
goto Sprache

:calc
cls
color a
set /p x=Rechenaufgabe: 
Set /A erg = %x%
echo Das Ergebnis lautet %erg%.
pause
goto Hauptmenue

:com
cls
echo.
set /p asw="Befehl:"

if %asw%==help goto help
if %asw%==exit goto Hauptmenue
if %asw%==open_mspaint goto mspaint
goto com

:help
cls
echo.
echo HELP zeigt diese seite an
echo.
echo OPEN oeffnet ein Programm z.B.open_mspaint
echo.
echo EXIT Beendet die Konsole
echo.
pause
goto com

:clock
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo ------------------------------------------------------------------------------------
echo                          %time%       Mindos         %date%
echo ------------------------------------------------------------------------------------
echo.
pause goto Hauptmenue