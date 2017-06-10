#!/bin/bash
clear
zenity --info \
--text="Antes de comenzar, y durante el transcurso de las operaciones, nuestro programa instalará los recursos necesarios para el correcto funcionamiento del programa. \n
Si usted tiene algún inconveniente, cancela esta operación. \n
Además, la ejecutación de nuestro programa debe ser con permisos de administrador para que pueda funcionar correctamente, de lo contrario, no funcionará. \n
Contacto: freeadri@autistici.org \n" >/dev/null 2>&1
sleep 3
figlet MySuite
sleep 4
figlet By W0lfAdri
sleep 4
clear
echo [!]Estamos instalando software necesario...
apt-get install nmap >/dev/null 2>&1
apt-get install git >/dev/null 2>&1
rm -r hashID >/dev/null 2>&1
apt-get install ettercap-graphical >/dev/null 2>&1
apt-get install ettercap >/dev/null 2>&1
echo [!]Este proceso puede durar un rato.
apt-get install netdiscover >/dev/null 2>&1
git clone https://github.com/psypanda/hashID >/dev/null 2>&1
rm -r golismero-master >/dev/null 2>&1
rm master.zip >/dev/null 2>&1
wget https://github.com/golismero/golismero/archive/master.zip >/dev/null 2>&1
unzip master.zip >/dev/null 2>&1
rm master.zip
echo [!]¡Queda poco!
apt-get install figlet >/dev/null 2>&1
echo [!]¡Adelante!
sleep 3
clear

for i in $( ls ); do
echo 
echo ***************************
echo **Un proyecto de W0lfAdri**
echo ********Versión 2.0********
echo 
herramienta=$(zenity --entry --title "Escoja herramienta:" --text "Escriba lo que quiera usar \n *)  nmap \n *)  golismero \n *) sqlmap \n *) hashid \n *) netdiscover \n *) ettercap") >/dev/null 2>&1
sh $herramienta.sh
sleep 2
echo [!]Espere y continuaremos con las operaciones...

done
