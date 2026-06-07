@echo off
REM Cricket Analytics — Start both backend and frontend
setlocal

set SCRIPT_DIR=%~dp0
set VENV=%SCRIPT_DIR%venv\Scripts

echo 🏏 Cricket Analytics Engine
echo ==============================

REM Start backend
echo Starting backend (port 8000)...
cd /d "%SCRIPT_DIR%backend"
start "Cricket Backend" /B "%VENV%\python.exe" -m uvicorn main:app --reload --port 8000

REM Wait for backend to be ready
echo Waiting for backend to load models...
timeout /t 5 /nobreak > nul
:check_backend
curl -sf http://localhost:8000/health > nul 2>&1
if errorlevel 1 (
    timeout /t 2 /nobreak > nul
    goto check_backend
)
echo Backend ready ✓

REM Start frontend
echo Starting frontend (port 5173)...
cd /d "%SCRIPT_DIR%frontend"
start "Cricket Frontend" cmd /c "npm run dev"

echo.
echo ==============================
echo ✓ Backend:  http://localhost:8000
echo ✓ Frontend: http://localhost:5173
echo ==============================
echo.
echo Default login: admin / admin123
echo.
echo Press Ctrl+C in the backend/frontend windows to stop servers

REM Keep this window open
pause