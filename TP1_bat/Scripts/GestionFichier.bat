rem GestionFichier.bat

rem légende
rem echo=affiche dans l'invite
rem cls=nettoye l'écran
rem if=condition
rem  call=appelle un :
rem  set=defnit une variable



cls
chcp 65001
@echo off
COLOR E
:debut

ECHO A. Créer un nouveau fichier
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

:selection1
SET /P nom=Entrez le nom du fichier a créée: 
IF exist   %nom%.txt ( echo ce fichier existe && PAUSE
cls
goto debut) ELSE (echo>> %nom%.txt && echo le fichier a bien été crée)
start notepad %nom%.txt

PAUSE
cls
goto debut

:Selection2
call MenuBatch.bat