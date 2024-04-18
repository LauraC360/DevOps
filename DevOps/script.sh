#!/bin/bash 
set -x

function create_list () {
    #Usage: ./script.sh create_list <N>

    # Check if my_list exists
    if [ -f my_list ]; then
        rm -f my_list
    fi

    # Create my_list file
    touch my_list

    #Generate list
    for i in $(seq "$1"); do
        echo "fiipractic_$i" >> my_list
    done
}

function create_files_from_list () {
    # HINT: Use for and touch
    # Your code here
    if [ - f my_list ]; then
        echo "Error: my_list was not created yet"
        return 1
    fi

    # Reading from each line + creating the files
    for line in $(cat my_list); do 
        cd "$line"
        touch "$line"
        echo "New file created: $line"
    done    
}

function create_dirs_from_list () {
    # HINT: Use for and mkdir
    # Your code here
    if [ - f my_list ]; then
        echo "Error: my_list was not created yet"
        return 1
    fi

    # Reading from each line + creating the folders
    for line in $(cat my_list); do 
        mkdir "$line"
        echo "New folder created: $line"
    done    
}

function list_elements () {
    # HINT: Use for and echo
    # Your code here
    echo "List of current elements"
    ls -l
}

# Available actions: create_files, create_dirs, list_elements

action=$1
case $action in
    create_list)
    create_list $2;;
    create_files)
    create_files_from_list;;
    create_dirs)
    create_dirs_from_list;;
    list_elements)
    list_elements;;
    *) echo "Invalid command";;
esac
