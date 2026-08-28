@echo off
if not exist "%USERPROFILE%\.android" mkdir "%USERPROFILE%\.android"
copy /Y "debug.keystore" "%USERPROFILE%\.android\debug.keystore"
echo Installed. Expected SHA-1: E7:3A:95:CF:E9:28:65:7B:BF:12:7E:33:6F:AB:68:60:C6:7A:E2:24
keytool -list -v -keystore "%USERPROFILE%\.android\debug.keystore" -storepass android -alias androiddebugkey | findstr "SHA1"
