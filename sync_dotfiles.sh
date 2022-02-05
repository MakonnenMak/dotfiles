#!/bin/sh

YELLOW_TEXT_BLUE_BG="\e[1;33;4;44m"
END_COLOR_MODIF="\e[0m"

echoWithYellowBgBlueText(){
	echo -e ${YELLOW_TEXT_BLUE_BG}$@${END_COLOR_MODIF}
}
MAIN_PROMPT="Specify the files you wanna add in a space delimited format"

echoWithYellowBgBlueText ${MAIN_PROMPT}

declare -A OPTIONS
OPTIONS=(
"vim"
"zsh"
)

OPTION_FILE_LOCATIONS=(
[0]=".vimrc"
[1]=".zshrc"
)

configs=()
displayAndGetOptions()
{
	echo "Your options"
	for i in "${!OPTION_FILE_LOCATIONS[@]}"
	do
	  echo "$i) ${OPTION_FILE_LOCATIONS[$i]}"
	done

	read -a configs
}

echoOptions() {
	echoWithYellowBgBlueText "You chose to add"
	for value in ${@}
	do
		echo "${OPTION_FILE_LOCATIONS[${value}]}"
	done
}

displayAndGetOptions


while true; do
    echoOptions "${configs[@]}"
    read -p "Are these the correct choice? Type y for yes, n for no: "

    if [[ "$REPLY" == "y" ]];           then 
	    echoWithYellowBgBlueText "Great! Let's move on..." 
	    break
    elif (( REPLY == "n"   ));           then 
	    echoWithYellowBgBlueText 'Let us try again then...' >&2
	    displayAndGetOptions
    else
	    echo 'Not a valid input.' >&2;
    fi
done

files=("sync_dotfiles.sh")
for i in "${configs[@]}"
do
	files+=("${OPTION_FILE_LOCATIONS[${i}]}")
done

echo "Adding files..."
git add  ${files[*]}
echo "Committing files..."
git commit
git push

