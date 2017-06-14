@echo off

set currentDir=%~dp0

rem start nginx
CMD /c "cd /d C:\nginx & start nginx.exe"

rem start virtual env & run python server with twisted
CMD /k "cd /d %currentDir%..\env\Scripts & activate & python %currentDir%..\src\run.tac"

