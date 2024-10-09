::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
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
::Zh4grVQjdCiDJEmW+0UiKRZZSTjPcSb3MJxRpaW206fKkVQOQOcyfcKW5reBJOVe5knYZo8+wn9XnfcuBRVkXR2va0I4pUJNt2CAJYmZqwqB
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
set /p total=<systeme\temp\chargementTotal.txt
:1
set /p progress=<systeme\temp\chargement.txt

set /a percent=(progress * 100) / total

  powershell "Write-Progress -Activity 'Traitement en cours' -Status 'Progression: %percent%%%' -PercentComplete %percent%; Start-Sleep -Seconds 1"

goto 1