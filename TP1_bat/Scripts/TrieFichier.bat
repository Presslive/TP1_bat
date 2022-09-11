rem TrieFichier.bat

rem légende
rem echo=affiche dans l'invite
rem cls=nettoye l'écran
rem if=condition
rem  call=appelle un :
rem  set=defnit une variable


cls
chcp 65001
@echo off
:debut

ECHO A. Trier un fichier
ECHO B. Revenir menu principal
ECHO.

SET /P INPUT=Entrez une lettre valide:

IF  '%INPUT%'=='A' GOTO Selection1
IF  '%INPUT%'=='B' GOTO Selection2

CLS

ECHO ============Entrez Invalide============
ECHO -------------------------------------
ECHO Entrez une lettre du Menu
echo Menu [A-B] 
ECHO -------------------------------------
ECHO ======Appuyer sur Une touche pour Continuer======

PAUSE
cls
goto debut

:Selection1
ECHO A. Trier ordre croissant 
ECHO B.  Trier ordre decroissant
ECHO.

SET /P INPUT=Entrez une lettre valide:

IF  '%INPUT%'=='A' GOTO Selection3
IF  '%INPUT%'=='B' GOTO Selection4

CLS

:Selection3
SET /P nom=Entrez le nom du fichier a trier:
IF not exist %nom%.txt ( echo ce fichier n'existe pas && PAUSE
cls
goto debut) ELSE (sort %nom%.txt && echo le fichier a bien été trier)
start notepad %nom%.txt
PAUSE
cls
goto debut

:Selection4
SET /P nom=Entrez le nom du fichier a trier:
IF not exist   %nom%.txt ( echo ce fichier n'existe pas && PAUSE
cls
goto debut) ELSE (sort /r %nom%.txt && echo le fichier a bien été trier)		
start notepad %nom%.txt
PAUSE
cls
goto debut

:Selection2
call MenuBatch.bat