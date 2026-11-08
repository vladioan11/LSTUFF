#!/usr/bin/env bash

while true; do
    clear

    # Colors (Vaporwave Theme)
    CYAN=$'\e[1;36m'
    MAGENTA=$'\e[1;35m'
    YELLOW=$'\e[1;33m'
    GREEN=$'\e[1;32m'
    RED=$'\e[1;31m'
    RESET=$'\e[0m'

    # Get formatted time and date
    CURRENT_DATE=$(date +"%A, %B %d, %Y")
    CURRENT_TIME=$(date +"%H:%M:%S")

    # ASCII Banner
    echo -e "${CYAN}"
    cat << "EOF"
      __                  _               
     / /   __ _ _   _ ___| |__   ___ _ __ 
    / /   / _` | | | / __| '_ \ / _ \ '__|
   / /___| (_| | |_| \__ \ | | |  __/ |   
   \____/ \__,_|\__,_|___/_| |_|\___|_|   
EOF
    echo -e "${RESET}"

    # Time & Date Header
    echo -e "${CYAN}  ⏱  ${YELLOW}${CURRENT_DATE}${CYAN} | ${GREEN}${CURRENT_TIME}${RESET}"
    echo ""

    # Notes & Scratchpad Box
    echo -e "${MAGENTA}┌── [ NOTES & SCRATCHPAD ] ──────────────────────────────┐${RESET}"
    echo -e "${MAGENTA}│${RESET} ${YELLOW}•${RESET} TMUX - ^B -> %(vert) quote(horz)     ${MAGENTA}│${RESET}"
    echo -e "${MAGENTA}│${RESET} ${YELLOW}•${RESET} Audio Bridge: PULSE_SERVER=127.0.0.1 active            ${MAGENTA}│${RESET}"
    echo -e "${MAGENTA}│${RESET} ${YELLOW}•${RESET} Workspace: Debian proot on Android                     ${MAGENTA}│${RESET}"
    echo -e "${MAGENTA}└────────────────────────────────────────────────────────┘${RESET}"
    echo ""

    # App Launcher Menu with Hotkeys
    echo -e "${GREEN}  [1]${RESET} 🎵 Music Player      ${CYAN}(cliamp)${RESET}"
    echo -e "${GREEN}  [2]${RESET} 💬 Messaging        ${CYAN}(nchat)${RESET}"
    echo -e "${GREEN}  [3]${RESET} 📁 File Manager      ${CYAN}(spf)${RESET}"
    echo -e "${GREEN}  [4]${RESET} 🎮 Discord           ${CYAN}(discord)${RESET}"
    echo -e "${GREEN}  [q]${RESET} 🚪 Exit to Shell"
    echo ""

    # Instant hotkey capture (-n 1 reads a single keypress immediately)
    echo -n -e "${CYAN}Choose action [1-4, q]: ${RESET}"
    read -n 1 choice
    echo ""

    case $choice in
        1)
            echo -e "${GREEN}Launching cliamp...${RESET}"
            export PULSE_SERVER=127.0.0.1
            cliamp
            ;;
        2)
            echo -e "${GREEN}Launching messaging...${RESET}"
            nchat
            ;;
        3)
            echo -e "${GREEN}Launching superfile...${RESET}"
            spf
            ;;
        4)
            echo -e "${GREEN}Launching discord...${RESET}"
            concord
            ;;
        q|Q)
            echo -e "${MAGENTA}Returning to shell. See you later!${RESET}"
            break
            ;;
        *)
            echo -e "${RED}Invalid selection. Press any key to continue...${RESET}"
            read -n 1
            ;;
    esac
done
