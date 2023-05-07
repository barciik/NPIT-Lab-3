if [[ "$1" == "--date" || "$1" == "-d" ]]; then
	echo "$(date)"
fi

if [[ "$1" == "--logs" || "$1" == "-h" ]]; then
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

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
	echo "--help / -h"
	echo "--date / -d"
	echo "--logs / -l"
	echo "--error / -e"
	echo "--init / -i"
fi

if [[ "$1" == "--init" || "$1" == "-i" ]]; then

git clone git@github.com:barciik/NPIT-Lab-3.git

export PATH=$PATH:$(pwd)

fi

if [[ "$1" == "--error" || "$1" == "-e" ]]; then
	num=100
	if [[ -n "$2" ]]; then
		num=$2
	fi
	for ((i=1; i<=$num; i++)); do
    		filename="error${i}.txt"
		touch $filename
  	done

fi
