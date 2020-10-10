@echo off
:: GitHub : https://github.com/niirmaaltwaatii/CurLip
:: Batch-Script by Niirmaal Twaatii

:init
title CurLip by Niirmaal Twaatii
cls & color 0a
type bnr.txt

echo {

set /p ip="[CurLip]=> "
if %ip%==exit (goto end)
echo File Format Available [ xml , json ]
set /p f="Data File format : "

if %f%==xml (goto xml)
if %f%==json (goto json)

:xml
curl http://ip-api.com/xml/%ip% > ipdata/%ip%.xml
cd ipdata
pause
color 07 & cls
echo IP Information : %ip%
type %ip%.xml
echo }
echo File Saved as %ip%.xml at ipdata/ Location !
goto final

:json
curl http://ip-api.com/json/%ip% > ipdata/%ip%.json
cd ipdata
pause
color 07 & cls
echo IP Information : %ip%
type %ip%.json
echo }
echo File Saved as %ip%.xml at ipdata/ Location !
goto final

:final
echo }
cd ..

pause
goto init

:end