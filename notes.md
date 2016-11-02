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

* deborah@netbook:~$ docker run -d -p 5000:5000 --restart=unless-stopped --name registry \
> -v `pwd`/registry-data:/var/lib/registry \
> registry:2

deborah@netbook:~$ docker tag registry:2 localhost:5000/registry:2
deborah@netbook:~$ docker push localhost:5000/registry:2

docker build -t squid github.com/sameersbn/docker-squid

docker run --name squid -d --restart=always \
  --publish 3128:3128 \
  --volume `pwd`/squid-data:/var/spool/squid3 \
  squid

docker exec -it squid tail -f /var/log/squid3/access.log 
