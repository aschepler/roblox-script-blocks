REM Copy from Roblox Plugins directory to Git repository.
@ECHO OFF
IF NOT EXIST ".\src\" (
  ECHO src subdirectory not found
  EXIT /B 1
)

SETLOCAL
SET PLUGINFILE="%LOCALAPPDATA%\Roblox\Plugins\ScriptBlocksPlugin.lua"
IF NOT EXIST %PLUGINFILE% (
  ECHO ScriptBlocksPlugin.lua not found
  EXIT /B 1
)

COPY /Y %PLUGINFILE% ".\src\"
