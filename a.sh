#! bin/bash

#!/bin/bash

function print_pattern() {
    echo "Enter the number of rows for the pattern: "
    read num
    for ((i=0; i< num; i++))
    do
        for ((j=0; j < i; j++))
        do
            echo -n " "
        done
        for ((k = num;k > i;k--))
        do
            echo -n "$k "
        done
        echo 
    done
}

function display_users() {
    who | awk '{print $1}'
}

function display_terminal() {
    tty
}

function add_numbers() {
    echo "Enter first number: "
    read num1
    echo "Enter second number: "
    read num2
    result=$(echo "$num1 + $num2" | bc)
    echo "The sum of $num1 and $num2 is: $result"
}

function check_palindrome() {
    echo "Enter the string: "
    read str
    if [ "$str" == "$(echo $str | rev)" ]; then
        echo "The string is a palindrome."
    else
        echo "The string is not a palindrome."
    fi
}

while true
do
    clear
    echo "============================="
    echo " MENU DRIVEN SHELL SCRIPT"
    echo "============================="
    echo "1. Print Pattern"
    echo "2. Display Current Users"
    echo "3. Display Terminal Number"
    echo "4. Add Two Numbers"
    echo "5. Check Palindrome"
    echo "6. Exit"
    echo -n "Enter your choice: "
    read choice
    case $choice in
        1) print_pattern ;;
        2) display_users ;;
        3) display_terminal ;;
        4) add_numbers ;;
        5) check_palindrome ;;
        6) break ;;
        *) echo "Invalid choice, please try again." ;;
    esac
    sleep 2
done

