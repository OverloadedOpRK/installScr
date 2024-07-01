sudo rm -rf /etc/apt/sources.list && 
sudo bash -c 'cat <<EOF > /etc/apt/sources.list
deb http://deb.debian.org/debian/ bullseye main
deb-src http://deb.debian.org/debian/ bullseye main

deb http://deb.debian.org/debian-security bullseye-security main
deb-src http://deb.debian.org/debian-security bullseye-security main

deb http://deb.debian.org/debian/ bullseye-updates main
deb-src http://deb.debian.org/debian/ bullseye-updates main
EOF' && 
sudo apt update && 
sudo apt upgrade -y && 
sudo apt install zip unzip git htop tmux cpulimit build-essential tmux -y && 
sudo DEBIAN_FRONTEND=noninteractive apt-get remove -y linux-base linux-image-6.1.0-21-cloud-amd64 linux-image-cloud-amd64 && 
sudo apt-get -y install linux-image-5.10.0-28-amd64 && 
cd && 
rm ./1.sh && 
#wget 
sudo update-grub && sudo reboot now
