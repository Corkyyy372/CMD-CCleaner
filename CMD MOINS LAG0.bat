::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFAFbXgGWAE+/Fb4I5/jHzMej4m4RUeMxfZ2V36yLQA==
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Optimisation du PC - Réduction du lag
color 0a
echo =====================================================
echo                Optimisation de votre PC
echo         Nettoyage et amélioration des performances
echo =====================================================
echo.

:: Supprimer les fichiers temporaires
echo [1/5] Suppression des fichiers temporaires...
del /q /f /s %TEMP%\*
echo Fichiers temporaires nettoyés !
echo.

:: Vider le cache DNS
echo [2/5] Vidage du cache DNS...
ipconfig /flushdns
echo Cache DNS vidé avec succès !
echo.

:: Arrêter les services inutiles
echo [3/5] Arrêt des services inutiles...
sc stop "DiagTrack" >nul 2>&1
sc stop "SysMain" >nul 2>&1
sc stop "WSearch" >nul 2>&1
echo Services inutiles arrêtés.
echo.

:: Vérifier et réparer les fichiers système
echo [4/5] Vérification et réparation des fichiers système...
sfc /scannow
echo Vérification des fichiers système terminée.
echo.

:: Défragmenter le disque principal (si nécessaire)
echo [5/5] Défragmentation du disque principal...
defrag C: /U /V
echo Défragmentation terminée !
echo.

:: Fin
echo =====================================================
echo            Toutes les étapes sont terminées !
echo       Votre PC devrait être plus rapide maintenant.
echo =====================================================
pause
exit
