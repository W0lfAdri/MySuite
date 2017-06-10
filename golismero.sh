server=$(zenity --entry --title "¿A dónde lanzamos GoLismero? ;)" --text "¿A qué URL/IP quieres lanzar GoLismero?") >/dev/null 2>&1
cd golismero-master
python golismero.py $server

