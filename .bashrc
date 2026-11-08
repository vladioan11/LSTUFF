alias micro='micro -clipboard internal'
alias cliamp='cliamp --provider ytmusic'
alias dashi='~/LINUX/.scripts/launcher.sh'
alias wapp='nchat'
alias Desk='~/LINUX/.start.sh'
alias remoteD='xfreerdp /v:100.124.104.45 /u:vladioan111@gmail.com /p:$Ubmarin.15! /cert:ignore /sec:tls /f /dynamic-resolution +clipboard'
alias SCDAP='python3 -m http.server 8000'
alias LeTrain2D='~/LINUX/LeTrain/output/LeTrain2D/bin/LeTrain2D.sh'
export DISPLAY=:0
export XDG_RUNTIME_DIR=$PREFIX/tmp/runtime-termux
if [ -e /etc/debian_version ] || [ -e /etc/ubuntu-release ] || [ -d /proot-distro ]; then
    # Audio routing for cliamp / GUI apps
    ~/LINUX/.scripts/welcome.sh
    export DISPLAY=:0
    export PULSE_SERVER=127.0.0.1
    dashi
fi
# Check if we are running in native Termux (and not inside proot/Debian)
if [ -n "$TERMUX_VERSION" ] || [[ "$PREFIX" == *com.termux* ]]; then
    # Start PulseAudio and enable the TCP bridge safely
    ~/LINUX/.scripts/welcome2.sh
    pulseaudio --start --exit-idle-time=-1 2>/dev/null
    pacmd load-module module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1 2>/dev/null
fi

. "$HOME/.cargo/env"
alias discord='concord'
export EDITOR='micro' echo export VISUAL='micro'
export EDITOR='micro'
export VISUAL='micro'
export NODE_OPTIONS="--dns-result-order=ipv4first"
