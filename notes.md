# Notes for building the lab

* to flash the SD cards: `flash -n rpi3-2 https://github.com/hypriot/image-builder-rpi/releases/download/v1.0.0/hypriotos-rpi-v1.0.0.img.zip`
* view the avahi database : `avahi-browse -at`
* nmap doesn't work
* `avahi-resolve -4 -n rpi3-2.local` to get the IPv4 address
* lorsqu'on reflashe les cartes mémoire, il faut réinitialiser les clés publiques ssh
** ssh-keygen -f "/home/deborah/.ssh/known_hosts" -R rpi3-1.local et ssh-keygen -f "/home/deborah/.ssh/known_hosts" -R 10.42.0.49
** puis se connecter via ssh (ssh-keygen ne reconnait pas avahi)
** faire tourner le script `initAllRpi.sh`
* sudo apt-get install avahi-discover libnss-mdns
 
