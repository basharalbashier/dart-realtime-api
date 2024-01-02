@echo off

@REM Start docker
echo  Starting docker
docker compose up --build --detach

:LOOP
netstat -o -n -a | >nul findstr "8090" && (
    echo Waiting for Postgres...
    timeout /t 2 /nobreak > NUL
    goto :PORT_FOUND
)
echo Waiting for Postgres...
goto :LOOP

:PORT_FOUND
echo Postgres is ready
docker cp ./generated/tables-serverpod.pgsql postgresFlutter:/docker-entrypoint-initdb.d/tables-serverpod.pgsql && docker cp ./generated/tables.pgsql postgresFlutter:/docker-entrypoint-initdb.d/tables.pgsql && docker exec -u postgres postgresFlutter  psql test postgres -f docker-entrypoint-initdb.d/tables-serverpod.pgsql && docker exec -u postgres postgresFlutter  psql test postgres -f docker-entrypoint-initdb.d/tables.pgsql
 

echo Stopping docker
docker compose stop

exit /b
