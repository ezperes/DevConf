#!/bin/bash
echo
echo "We are going to push current configuration files to DevConf remote repo"

# files=(.gitconfig .bash_profile .bash_aliases)
files=(a b c)

# Exhibits file list
echo
echo The files are:
for i in ${files[@]}; do echo $i; done

# Reads answer and procceeds 
read -t 3 -n 1 -p "Are you sure(y/n)? " answer
if [ $? != 0 ]; then
    # No input
    echo
    echo "Can't wait for ever!"
else
    if [ "$answer" != "${answer#[Yy]}" ] ;then
    	echo
	echo User says YES!	
	cd ~/DevConf	

	echo
	echo Deleting previous existing files in DevConf directory
	for file in ${files[@]}; do rm -v $HOME/DevConf/$file; done

	echo
	echo Copying files from home to ~/DevConf
	for file in ${files[@]}; do 
	    cp -vf $HOME/$file $HOME/DevConf;
	    done
	
	

    else
	# User says NO...
	echo
    	echo No
    fi
    echo
    # echo "Your answer is: $answer"
fi
