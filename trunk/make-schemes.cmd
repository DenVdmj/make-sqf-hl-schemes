@cls
@if exist "%~dp0make.bin" (
    "%~dp0bin\luajit.exe" "%~dp0make.bin"
) else (
    "%~dp0bin\luajit.exe" "%~dp0make.luaj"
)