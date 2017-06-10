server=$(zenity --entry --title "¿A dónde lanzamos nmap hoy? :)" --text "¿A qué URL/IP quieres lanzar nmap?") >/dev/null 2>&1
nmap $server
