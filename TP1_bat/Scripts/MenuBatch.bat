rem MenuBatch.bat

rem légende
rem echo=affiche dans l'invite
rem cls=nettoye l'écran
rem if=condition
rem  call=appelle un :
rem  set=defnit une variable



chcp 65001
@ECHO OFF
COLOR A

:MENU
CLS

ECHO ============= MENU =============
ECHO --------------------------------
ECHO A. Créer un répertoire
ECHO B. Afficher le contenu d un repertoire de son choix

ECHO C. Créer ou éditer un fichier de son choix
ECHO D. Supprimer (avec demande de confirmation) un fichier de son choix
ECHO E. Trier le contenu d'un fichier (avec choix de l'ordre croissant ou décroissant)
ECHO -------------------------------------
ECHO -------------------------------------
ECHO F. Sortir du menu
ECHO -------------------------------------
ECHO ==========Appuyer  'F' Pour Quitter==========
ECHO.

set choix=null
set /p choix=Entrez une lettre valide:

IF  %choix%==A goto creationrep
IF  %choix%==B goto AffichageArbre
IF  %choix%==C goto GestionFichier
IF  %choix%==D goto SupressionFichier
IF  %choix%==E goto TrieFichier
IF  %choix%==F goto quitter

CLS

ECHO ============Entrez Invalide============
ECHO -------------------------------------
ECHO Entrez une lettre du Menu
echo Menu [A-E] ou selectionner'F' pour Quitter.
ECHO -------------------------------------
ECHO ======Appuyer sur Une touche pour Continuer======
pause 
goto MENU

:creationrep
call CreationRep.bat
goto MENU

:AffichageArbre
CALL AffichageArbre.bat
goto MENU

:GestionFichier
CALL GestionFichier.bat
goto MENU

:SupressionFichier
CALL SupressionFichier.bat
goto MENU

:TrieFichier
CALL TrieFichier.bat
goto MENU

:quitter

set /p choix2=Voulez-vous quitter?? (O/N) :

IF  %choix2%==O goto choixO
IF  %choix2%==N goto choixN 

CLS

ECHO ============Entrez Invalide============
ECHO -------------------------------------
ECHO Entrez une lettre du Menu
echo Menu [A-E] ou selectionner'F' pour Quitter.
ECHO -------------------------------------
ECHO ======Appuyer sur Une touche pour Continuer======
pause 
goto MENU


:choixO
exit

:choixN

goto MENU

CLS

ECHO ============Entrez Invalide============
ECHO -------------------------------------
ECHO Entrez une lettre du Menu
echo Menu [A-E] ou selectionner'F' pour Quitter.
ECHO -------------------------------------
ECHO ======Appuyer sur Une touche pour Continuer======
pause 
goto MENU


