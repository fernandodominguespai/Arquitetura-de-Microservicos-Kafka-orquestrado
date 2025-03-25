@echo off
setlocal

set PORTAS=8092 8080 3000 8091 8090

for %%P in (%PORTAS%) do (
    echo Verificando porta %%P...
    set "PID="

    for /f "tokens=5" %%A in ('netstat -aon ^| findstr :%%P') do (
        set PID=%%A
        call :ENCERRAR %%P %%A
    )

    if not defined PID (
        echo Nenhum processo encontrado utilizando a porta %%P.
    )
)

goto :EOF

:ENCERRAR
set PORTA=%1
set PID=%2

echo Encerrando processo com PID %PID% na porta %PORTA%...
taskkill /PID %PID% /F >nul 2>&1

if %ERRORLEVEL%==0 (
    echo Processo na porta %PORTA% encerrado com sucesso.
) else (
    echo Falha ao encerrar processo na porta %PORTA%.
)

goto :EOF
