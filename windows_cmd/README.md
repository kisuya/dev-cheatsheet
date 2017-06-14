# Windows CMD Examples

## remote desktop

```cmd
@echo off
cmdkey /generic:"xxx.xxx.xxx.xxx" /user:"id" /pass:"password"
start "" mstsc /v:"xxx.xxx.xxx.xxx:port"
```

## batch file run as administrator

use PowerShell to run b.bat as administrator from a.bat [Reference link](https://stackoverflow.com/a/27479373)

```cmd
@echo off
set mydir=%~dp0

Powershell -Command "& { Start-Process \"%mydir%b.bat\" -verb RunAs}"
```