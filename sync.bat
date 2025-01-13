@echo off

REM Navigate to the RailVision project directory
cd /d "C:\Users\KIIT\Desktop\RailVision-Mini-Project"

REM Stage all changes
git add .

REM Commit changes with a message
git commit -m "Automated sync commit for RailVision project"

REM Pull the latest changes from the main branch
git pull origin main --no-edit
if %errorlevel% neq 0 (
    echo Merge conflict detected. Resolve conflicts and rerun the script.
    pause
    exit /b
)

REM Push the changes to the main branch
git push origin main

REM Pause to display the operation result
pause
