# Windows cmd

## remote desktop

```cmd
@echo off
cmdkey /generic:"xxx.xxx.xxx.xxx" /user:"id" /pass:"password"
start "" mstsc /v:"xxx.xxx.xxx.xxx:port"
```

## batch file run as administrator

use PowerShell to run b.bat as administrator from a.bat 
[https://stackoverflow.com/a/27479373](https://stackoverflow.com/a/27479373)

```cmd
@echo off
set mydir=%~dp0

Powershell -Command "& { Start-Process \"%mydir%b.bat\" -verb RunAs}"
```

## start flask with python on windows
[http://www.flask.moe/windows#apache_mod_wsgi](http://www.flask.moe/windows#apache_mod_wsgi)

```cmd
@echo off

set currentDir=%~dp0

CMD /c "cd /d C:\nginx & start nginx.exe"
CMD /k "cd /d %currentDir%..\env\Scripts & activate & python %currentDir%..\src\run.tac"
```

## check process running
[https://stackoverflow.com/a/1329790](https://stackoverflow.com/a/1329790)

**2>NUL ?** [link](https://stackoverflow.com/a/19599228)

The digit before a redirection symbol is the stream number to redirect.
The default stream is 1, when no number is present, so 1>... and >... are equivalent.

stream 1 is the standard input/output stream, 2 is the standard error stream.

A command can output to multiple streams and it's allowed to redirect each of them to a different destination.

So 2>nul and 1>nul simply said that the error output and the normal output will be redirected to nul. So nothing will be outputted.

 
```cmd
tasklist /FI "IMAGENAME eq myapp.exe" 2>NUL | find /I /N "myapp.exe">NUL
if "%ERRORLEVEL%"=="0" echo Program is running
```

## find service by name

```cmd
SET servicename=xxx
sc query %servicename% 
if "%ERRORLEVEL%"=="0" (
    ECHO "xxx Service run already"
    pause
    exit
) 
```