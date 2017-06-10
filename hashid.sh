hash=$(zenity --entry --title "¡Investigación, cracking, rompe el hash! :)" --text "Escriba el hash a inspeccionar") >/dev/null 2>&1
cd hashID
./hashid.py $hash

