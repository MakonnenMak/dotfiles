#!/bin/sh

# These are files that exist in my dotfiles directory 
# on my machine. These are symlinked to actual locations.

# Specify a new file here, seperating a new configuration 
# with a new line. Will prob move to own file if
# this gets too big...

#OPTIONS=(
#[0]=".vimrc"
#[1]=".zshrc"
#...
#[9]=".newconfig" <-- example of new addition
#)

OPTIONS=(
[0]="sync_dotfiles.sh"
[1]=".vimrc"
[2]=".zshrc"
[3]=".i3config"
)

# Useful styling constants and helper funcs 
YELLOW_TEXT_BLUE_BG="\e[1;33;4;44m"
END_COLOR_MODIF="\e[0m"

MAIN_PROMPT="Specify the files you wanna add in a space delimited format"
HELPER="Example: '0 1' for vimrc and zshrc"

echoWithYellowBgBlueText(){
	echo -e ${YELLOW_TEXT_BLUE_BG}$@${END_COLOR_MODIF}
}

# Script starts 

echoWithYellowBgBlueText ${MAIN_PROMPT}
echo ${HELPER}

userChoices=()
setUserChoices()
{
	echo "Your options"
	for i in "${!OPTIONS[@]}"
	do
	  echo "$i) ${OPTIONS[$i]}"
	done

	read -a userChoices
}

# Let's me choose files  
setUserChoices

echoOptions() {
	echoWithYellowBgBlueText "You chose to add"
	for value in ${@}
	do
		echo "${OPTIONS[${value}]}"
	done
}

# Confirm choices. Continue if correct, otherwise call the set function again
while true; do
    echoOptions "${userChoices[@]}"
    read -p "Are these the correct choice? Type y for yes, n for no: "

    if (( "$REPLY" == "y" ));           then 
	    echoWithYellowBgBlueText "Great! Let's move on..." 
	    break
    elif (( REPLY == "n"   ));           then 
	    echoWithYellowBgBlueText 'Let us try again then...' >&2
	    setUserChoices 
    else
	    echo 'Not a valid input.' >&2;
    fi
done

# Now that choices are confirmed can add files, commit, and push
files=()
for i in ${userChoices[@]}
do
	files+=("${OPTIONS[${i}]}")
done

echo "Adding files..."
git add  ${files[*]}
echo "Committing files..."
git commit
git push

