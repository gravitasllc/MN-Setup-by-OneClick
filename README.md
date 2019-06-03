# MN-Setup Guide (Follow below Steps):
`wget -q https://raw.githubusercontent.com/stakecube/MN-Setup-by-OneClick/master/SCC-mn.sh`

`sudo chmod +x SCC-mn.sh`

`./SCC-mn.sh`


When prompted to Enter your StakeCube Masternode GEN Key.

Paster your Masternode GEN Key and press enter


Wait till Node is fully Synced with blockchain.

After node full sync. you have to open file configurtation: 
`nano /root/.StakeCubeCore/stakecube.conf`

Copy the settings: rpcuser\rpcpassword\rpcport\rpcallowip\addnode\ etc.. and insert to you wallet file (in Windows):
`%appdata%\StakeCube\stakecube.conf` 

For check enter below command.
`stakecube-cli getinfo`

Unlock you wallet and open Debug console at the Tool in your Wallet and enter this: 
`startmasternode alias lockwallet mn1`

When Node Fully Synced enter below command for check masternode status.
`stakecube-cli masternode status`

# Guide for Update_Masternode.sh:
`wget -q https://raw.githubusercontent.com/stakecube/MN-Setup-by-OneClick/master/Update_Masternode.sh`

`sudo chmod +x Update_Masternode.sh`

`./Update_Masternode.sh`
