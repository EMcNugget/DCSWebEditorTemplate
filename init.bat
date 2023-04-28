@echo off

set /p service_name="Enter your microservice name: "

powershell -Command "(gc vite.config.ts) -replace 'your-service-name-here', '%service_name%' | Out-File vite.config.ts"
powershell -Command "(gc index.html) -replace 'your-service-name-here', '%service_name%' | Out-File index.html"
powershell -Command "(gc package.json) -replace 'your-service-name-here', '%service_name%' | Out-File package.json"

set /p service_abv="Enter microservice abbreviation: "

powershell -Command "(gc package.json) -replace 'abvv', '%service_name%' | Out-File package.json"

echo "Microservice name updated to %service_name%"
