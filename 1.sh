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
sudo DEBIAN_FRONTEND=noninteractive apt-get remove -y linux-image-6.1.0-21-cloud-amd64 linux-image-6.1.0-22-cloud-amd64 linux-image-cloud-amd64 && 
#Dosen't work
#sudo DEBIAN_FRONTEND=noninteractive apt-get linux-base
sudo DEBIAN_FRONTEND=noninteractive apt-get linux-headers-5.15.0-107 linux-headers-5.15.0-107-generic linux-headers-5.15.0-113 linux-headers-5.15.0-113-generic linux-headers-generic linux-headers-virtual linux-image-5.15.0-107-generic linux-image-5.15.0-113-generic linux-image-virtual linux-modules-5.15.0-107-generic linux-modules-5.15.0-113-generic linux-virtual -y && 
cd && 
#wget 2.sh && 
rm ./1.sh && 
sudo DEBIAN_FRONTEND=noninteractive update-grub && sudo reboot now
