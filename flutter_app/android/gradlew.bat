@if "%DEBUG%" == "" @echo off
@rem ---------------------------------------------------------------------------
@rem BarePingWidget (Flutter) - local Gradle launcher
@rem
@rem The original official wrapper script was backed up as gradlew.bat.orig.
@rem This script calls the locally installed Gradle (see GRADLE_HOME) instead of
@rem downloading a distribution from services.gradle.org (unreachable here).
@rem To return to the official wrapper, restore gradlew.bat.orig.
@rem ---------------------------------------------------------------------------

if "%GRADLE_HOME%" == "" set "GRADLE_HOME=D:\rule\gradle-9.6.0"
if "%JAVA_HOME%" == "" set "JAVA_HOME=D:\rule\java\jdk-17.0.12"

set "PATH=%JAVA_HOME%\bin;%PATH%"

set "GRADLE_BAT=%GRADLE_HOME%\bin\gradle.bat"
if not exist "%GRADLE_BAT%" goto missing_gradle

call "%GRADLE_BAT%" %*
exit /b %ERRORLEVEL%

:missing_gradle
echo [gradlew] local Gradle not found at "%GRADLE_BAT%"
echo [gradlew] set GRADLE_HOME to your Gradle install directory and retry.
exit /b 1
