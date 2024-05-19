@echo off
setlocal

:: Check if 7z is installed
where /q 7z
if %errorlevel% neq 0 (
    echo 7z is not installed, trying to locate Nanazip
    where /q Nanazip
    if %errorlevel% neq 0 (
        echo Nanazip is not found, please install either 7z or Nanazip
        exit /b
    ) else (
        echo Nanazip is installed, zipping the folders
        NanaZipC a -tzip pak009.pk4 def materials particles skins sound textures
        exit /b
    )
)

:: If 7z is installed, zip the folders
echo 7z is installed, zipping the folders
7z a -tzip pak009.pk4 def materials particles skins sound textures