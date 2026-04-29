@echo off
echo Syncing agent files to Copilot agents folder...

REM 設定來源和目標資料夾
set SOURCE_DIR=%~dp0
set TARGET_DIR=C:\Users\Dinoin_Chen\.copilot\agents

REM 確保目標資料夾存在
if not exist "%TARGET_DIR%" (
    echo Creating target directory: %TARGET_DIR%
    mkdir "%TARGET_DIR%"
)

REM 同步所有.agent.md檔案
echo Copying agent files from %SOURCE_DIR% to %TARGET_DIR%
for %%f in ("%SOURCE_DIR%*.agent.md") do (
    echo Copying %%~nxf...
    copy "%%f" "%TARGET_DIR%\" > nul
    if errorlevel 1 (
        echo Error copying %%~nxf
    ) else (
        echo Successfully copied %%~nxf
    )
)

echo.
echo Agent sync completed!
echo.