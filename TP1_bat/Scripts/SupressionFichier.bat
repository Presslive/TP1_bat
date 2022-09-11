rem SupressionFichier.bat

rem légende
rem echo=affiche dans l'invite
rem cls=nettoye l'écran
rem if=condition
rem  call=appelle un :
rem  set=defnit une variable



cls
chcp 65001
@echo off
color 4
:debut

ECHO A. Suprimer un fichier
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
SET /P nom=Entrez le nom du fichier a supprimer:
IF not exist   %nom% ( echo ce fichier n'existe pas && PAUSE
cls
goto debut) ELSE (DEL %nom% && echo le fichier a bien été supprimer)
PAUSE
cls
goto debut

:Selection2
call MenuBatch.bat