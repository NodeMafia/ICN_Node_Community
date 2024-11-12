#!/bin/bash

# Node Mafia ASCII Art
echo "
     __             _                        __  _        
  /\ \ \  ___    __| |  ___   /\/\    __ _  / _|(_)  __ _ 
 /  \/ / / _ \  / _\` | / _ \ /    \  / _\` || |_ | | / _\` |
/ /\  / | (_) || (_| ||  __// /\/\ \| (_| ||  _|| || (_| |
\_\ \/   \___/  \__,_| \___|\/    \/ \__,_||_|  |_| \__,_|

EN Telegram: soon..
RU Telegram: https://t.me/nodemafia
GitHub: https://github.com/NodeMafia
Medium: https://medium.com/@nodemafia
Teletype: https://teletype.in/@nodemafia
Twitter: https://x.com/NodeMafia
"

# Function to install ICN node
install_icn_node() {
    echo "Starting ICN node installation..."

    # Updating the package list
    echo "Updating package list..."
    sudo apt update

    # Upgrading installed packages
    echo "Upgrading installed packages..."
    sudo apt upgrade -y

    # Installing 'screen'
    echo "Installing 'screen' package..."
    sudo apt install screen -y

    # Creating a new screen session named 'ICN'
    echo "Creating a new screen session named 'ICN'..."
    screen -S ICN -d -m

    # Requesting the private key from the user
    read -rp "Enter your private key (without 0x at the beginning): " private_key

    # Starting the ICN node installation in the screen session
    echo "Starting ICN node installation in the 'ICN' screen session..."
    screen -S ICN -X stuff "curl -o- https://console.icn.global/downloads/install/start.sh | bash -s -- -p ${private_key}\n"

    echo "ICN node installation process initiated in the 'ICN' screen session."
}

# Function to restart ICN node
restart_icn_node() {
    echo "Restarting ICN node..."

    # Closing the existing 'ICN' screen session if it exists
    echo "Closing existing 'ICN' screen session..."
    screen -S ICN -X quit

    # Creating a new screen session named 'ICN'
    echo "Creating a new screen session named 'ICN'..."
    screen -S ICN -d -m

    # Requesting the private key from the user
    read -rp "Enter your private key (without 0x at the beginning): " private_key

    # Starting the ICN node in the new screen session
    echo "Starting ICN node in the 'ICN' screen session..."
    screen -S ICN -X stuff "curl -o- https://console.icn.global/downloads/install/start.sh | bash -s -- -p ${private_key}\n"

    echo "ICN node restart process initiated in the 'ICN' screen session."
}

# Function to view logs of ICN node
view_logs_icn_node() {
    echo "Viewing logs of the ICN node in the 'ICN' screen session..."
    # Attaching to the 'ICN' screen session to view logs
    screen -r ICN
}

# Main menu
while true; do
    # Instruction for using screen
    echo -e "\033[1;33mIMPORTANT:\033[0m To detach from the screen session, use \033[1;32mCTRL+A, D\033[0m."
    echo -e "If you use \033[1;31mCTRL+C\033[0m, the screen session will be terminated."

    echo "Select an action:"
    echo "1) Install ICN node"
    echo "2) Restart ICN node"
    echo "3) View logs of ICN node"
    echo "0) Exit"

    read -rp "Enter your choice: " choice

    case $choice in
        1)
            install_icn_node
            ;;
        2)
            restart_icn_node
            ;;
        3)
            view_logs_icn_node
            ;;
        0)
            echo "Exiting the script..."
            exit 0
            ;;
        *)
            echo "Invalid choice, please try again."
            ;;
    esac
done
