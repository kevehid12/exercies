#!/bin/bash
install_common_tools(){
    print_status "Installing common tools.."
    apt-get install -y terminator curl wget git virtualbox-guest-x11 terminator sparta gobuster python3-pip git
}


pip3 install updog
update-rc.d postgresql enable && update-rc.d metasploit enable
mkdir /root/server

sed -i '/auth/ s/root/any/g' /etc/pam.d/lightdm-autologin

echo "[SeatDefaults]
autologin-user=root
autologin-user-timeout=0" >>/etc/lightdm/lightdm.conf

xset s off
xset s noblank
xset -dpms

passwd 12
