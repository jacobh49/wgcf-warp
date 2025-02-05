#!/bin/bash

PS3='Please enter your choice: '
options=("Option 1: main" "Option 2: main_generate")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1: main")
            echo "You chose choice 1, which is main"
            chmod +x main
            ./main
            break
            ;;
        "Option 2: main_generate")
            echo "You chose choice 2, which is main_generate"
            chmod +x main_generate
            ./main_generate
            break
            ;;
        *) echo "Invalid option: $REPLY"
        break
        ;;
    esac
done