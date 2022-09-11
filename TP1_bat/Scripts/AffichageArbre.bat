rem AffichageArbre.bat

rem légende
rem echo=affiche dans l'invite
rem cls=nettoye l'écran
rem if=condition
rem  call=appelle un :
rem  set=defnit une variable




chcp 65001
cls
@echo off
color 1
:main
ECHO A. Contenu du répertoire 
ECHO B. Arborescence
ECHO C. Revenir menu principal
ECHO.

SET /P INPUT=Entrez une lettre valide:

IF /I '%INPUT%'=='A' GOTO Selection1
IF /I '%INPUT%'=='B' GOTO Selection2
IF /I '%INPUT%'=='C' GOTO Selection3


CLS

ECHO ============Entrez Invalide============
ECHO -------------------------------------
ECHO Entrez une lettre du Menu
echo Menu [A-C] 
ECHO -------------------------------------
ECHO ======Appuyer sur Une touche pour Continuer======

PAUSE > NUL
GOTO main

		       :Selection1
cls
@echo off
SET /P saisi=Entrez le nom du repertoire : 

IF not exist %saisi% ( echo ce répertoire n'existe pas
pause
cls
goto main)

IF exist  goto exist1

:exist1
 dir c:%saisi% /A /B /O:GEN 
pause
cls
goto main


:Selection2
cls

@echo off
SET /P saisi2=Entrez le nom du repertoire : 
IF not exist %saisi2% ( echo ce répertoire n'existe pas 
pause
cls
goto main ) ELSE(tree %saisi2% /A /F pause
cls
goto main)

:Selection3
call MenuBatch.bat 