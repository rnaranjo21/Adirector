@echo off
taskkill /F /IM java.exe
taskkill /F /IM pg.exe
taskkill /F /IM ActivationWizardDotNet.exe
cd C:\Program Files (x86)\Neurotechnology\Neurotec Biometric 4.0 SDK\Bin\Win64_x64\Activation
pg.exe -install
timeout /t 0 /nobreak
FOR %%X IN (C:\Fenix\Administracion\Accesos_Fenix3\*.*) DO rundll32 shell32.dll,ShellExec_RunDLL %%X