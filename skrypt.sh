if [[ "$1" == "--date" ]]; then
	echo "$(date)"
fi

if [[ "$1" == "--logs" ]]; then
	num=100
	if [[ -n "$2" ]]; then
		num=$2
	fi
	for ((i=1; i<=$num; i++)); do
    		filename="log${i}.txt"
   		echo "Nazwa pliku: ${filename}" > "${filename}"
    		echo "Nazwa skryptu: ${0}" >> "${filename}"
    		echo "Data utworzenia: $(date)" >> "${filename}"
    		echo "Plik ${filename} utworzony."
  	done

fi

if [[ "$1" == "--help" ]]; then
	echo "--date"
	echo "--logs"
fi
