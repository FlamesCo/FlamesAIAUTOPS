@echo off
rem This batch script installs PowerShell on Windows 11.

rem Check if PowerShell is already installed.
rem If it is, exit the script.
rem This is to prevent the script from installing PowerShell multiple times.
rem Set the variable "PowershellInstalled" to "1" if PowerShell is already installed.
rem Set the variable "PowershellInstalled" to "0" if PowerShell is not installed.
for /f "delims=" %%i in ('where powershell.exe') do (
set "PowershellInstalled=1"
)

rem If PowerShell is not installed, install it.
if "%PowershellInstalled%"=="0" (
echo Installing PowerShell...
rem Install PowerShell from the Microsoft Store.
start powershell -command "Invoke-WebRequest https://aka.ms/install-win10-powershell -UseBasicParsing | Out-File -FilePath powershell.msi"
rem Start the installer.
start powershell.msi
) else (
echo PowerShell is already installed.
)