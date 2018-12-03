REM Copy from Git repository to Roblox Plugins directory.
REM Unknown how well this will work if Roblox Studio is currently open!
@ECHO OFF
SETLOCAL
SET PLUGINDIR="%LOCALAPPDATA%\Roblox\Plugins\"
SET SRCFILE="src\ScriptBlocksPlugin.lua"
IF NOT EXIST %SRCFILE% (
  ECHO src\ScriptBlocksPlugin.lua file not found
  EXIT /B 1
)
IF NOT EXIST %PLUGINDIR% (
  ECHO Roblox Plugin directory not found
  EXIT /B 1
)

COPY /Y %SRCFILE% %PLUGINDIR%
