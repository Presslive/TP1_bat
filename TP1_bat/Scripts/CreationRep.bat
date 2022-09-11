rem CreationRep.bat

rem légende
rem echo=affiche dans l'invite
rem cls=nettoye l'écran
rem if=condition
rem  call=appelle un :
rem  set=defnit une variable



cls
chcp 65001
@echo off
COLOR 5
:debut

ECHO A. Créer un répertoire			
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
cls
:main
@echo off
SET /P nom=Entrez le nom du répertoire a crée: 

IF exist %nom% ( echo ce répertoire existe ) ELSE ( mkdir %nom% && echo le répertoire a bien été crée)

PAUSE
cls
goto debut 

:Selection2
call MenuBatch.bat



