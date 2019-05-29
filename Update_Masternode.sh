#/bin/bash

echo "We will update your StakeCube Masternode right now" 
sudo apt-get -y install unzip
stakecube-cli stop
rm -rf /usr/local/bin/stakecube*
mkdir SCCUpdated_1.0.0.1
cd SCCUpdated_1.0.0.1
wget https://github.com/stakecube/stakecube/releases/download/v1.0.0.1/StakeCube-1.0.0.1-ubuntu_16.04_daemon.tar.gz
tar xzvf StakeCube-1.0.0.1-ubuntu_16.04_daemon.tar.gz
mv stakecubed /usr/local/bin/stakecubed
mv stakecube-cli /usr/local/bin/stakecube-cli
chmod +x /usr/local/bin/stakecube*
rm -rf ~/.StakeCubeCore/blocks
rm -rf ~/.StakeCubeCore/chainstate
rm -rf ~/.StakeCubeCore/peers.dat
cd ~/.StakeCubeCore/
wget https://github.com/stakecube/stakecube/releases/download/v1.0.0.1/bootstrap.zip
unzip bootstrap.zip
echo "addnode=95.179.165.19 add" >> stakecube.conf
echo "addnode=209.250.224.166 add" >> stakecube.conf
echo "addnode=108.61.212.198 add" >> stakecube.conf
echo "addnode=78.141.211.79 add" >> stakecube.conf
echo "addnode=95.179.209.111 add" >> stakecube.conf
cd ..
cd SCCUpdated_1.0.0.1
stakecubed -daemon
sleep 10s
stakecube-cli addnode 95.179.165.19 onetry
stakecube-cli addnode 209.250.224.166 onetry
stakecube-cli addnode 108.61.212.198 onetry
stakecube-cli addnode 78.141.211.79 onetry
stakecube-cli addnode 95.179.209.111 onetry

echo "Masternode Updated!"
echo "Please wait few minutes and start your Masternode again on your Local Wallet"
