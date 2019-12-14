#! /usr/bin/env bash



# Option 1 - Clone Repository
one(){

    clear
    read -p 'Enter Git SSH Key: ' cloneAdd

if (( '$cloneAdd' =~ ^[a-z]+@[a-z]+\.[a-z]\:[A-Za-z0-9._]+\/[A-za-z0-9._-]+\.[a-z] ))
then
    git clone $cloneAdd
else
    echo !!!INVALID SSH KEY!!!
fi
    pause

} 

# Main Menu
show_menus(){

    clear
    echo "-------------------->"
    echo Welcome to CloneGitMe
    echo "<--------------------"
    echo "Main Menu:"
    echo "( 1 ) Clone Repository"
    echo "( 2 ) Exit"

}
# Read input and take action

read_options(){
    local choice
    read -p "Please Select an Option: " choice
    case $choice in
        1) one ;;
        2) exit 0;;
    esac
}

while true
do

    show_menus
    read_options
done