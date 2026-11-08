#!/bin/bash

# Clear screen for a fresh aesthetic startup
clear

# Colors (ANSI Escape Sequences for Vaporwave Cyan, Magenta, and Yellow)
CYAN='\033[1;36m'
MAGENTA='\033[1;35m'
YELLOW='\033[1;33m'
RESET='\033[0m'

echo -e "${MAGENTA}"
cat << "EOF"

░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓██████████████▓▒░ ░▒▓██████▓▒░ ░▒▓██████▓▒░  
░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
 ░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
 ░▒▓█▓▒▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
  ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
  ░▒▓█▓▓█▓▒░ ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░ 
   ░▒▓██▓▒░  ░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓█▓▒░░▒▓██████▓▒░ ░▒▓██████▓▒░  
                                                                   
    ░TERMUX ░ARM64 ░SYSTEM
EOF
   echo -e "${MAGENTA} You are currently ${CYAN}1${MAGENTA} level down${RESET}"

echo -e "${RESET}"

echo -e "${CYAN}┌────────────────────────────────────────────────────────┐${RESET}"
echo -e "${CYAN}│${RESET} ${YELLOW}HOST:${RESET}     The One and Only                             ${CYAN}│${RESET}"
echo -e "${CYAN}│${RESET} ${YELLOW}UPTIME:${RESET}   $(uptime -p | sed 's/up //')          ${CYAN}│${RESET}"
echo -e "${CYAN}│${RESET} ${YELLOW}STORAGE:${RESET}  Full of memories                             ${CYAN}│${RESET}"
echo -e "${CYAN}│${RESET} ${YELLOW}DISPLAY:${RESET}  ${DISPLAY:-Not Set}                                           ${CYAN}│${RESET}"
echo -e "${CYAN}└────────────────────────────────────────────────────────┘${RESET}"
echo -e "${MAGENTA}   ~ v i r t u a l   r e a l i t y   a w a i t s ~ ${RESET}\n"
