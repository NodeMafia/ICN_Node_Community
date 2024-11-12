# [Impossible Cloud Network(ICN)](https://console.icn.global/dashboard). Launching Testnet node.
*Disclaimer: The author of this guide, which is exclusively informational material, does not bear any responsibility for the actions of readers. There are no fraudulent or spam links in the guide. All materials were obtained from official sources, links to which can be found at the end of each guide. This post is copyrighted by Nod Mafia.*

![image](https://github.com/user-attachments/assets/9824dcd2-fc9e-4db9-a2cc-7197ee5dfdd7)

Impossible Cloud Network (ICN) is a revolutionary cloud platform that connects enterprise-grade hardware with cloud service providers. By leveraging SLA oracle nodes, ICN ensures unmatched performance and service quality in a decentralized, secure, and efficient cloud ecosystem.

To run the node we will need to have Sepolia EHT test tokens on your main wallet and a new EVM wallet for the node. You can get them on the [Google Cloud for Web3 Faucet website](https://cloud.google.com/application/web3/faucet/ethereum/sepolia). Just enter your address and get the tokens. Transfer some SepoliaETH to your new EVM wallet.

![image](https://github.com/user-attachments/assets/59ae6a58-f841-4ead-933d-f70fe01c9a92)


## [ICN Testnet](https://testnet.icn.global). What you need to do?

![image](https://github.com/user-attachments/assets/42a3d39c-20e7-4a61-bd6b-7cd5e80b7844)

On the [ICN Console site](https://console.icn.global/dashboard), after depositing Sepolia ETH into the wallet, log it in and get your ICN testnet passport. If the transaction fails, try changing the priority by changing the gas value to FAST.

![image](https://github.com/user-attachments/assets/a1077446-48c8-4b9a-8b19-8edfde23525c) ![ICN_Gas](https://github.com/user-attachments/assets/9e568a98-b21a-4ce8-a4a8-cbab44c83845)

Next we need to bind our new wallet to the node, for this we click on the Revoke button and insert the addresse of our new EVM wallet. Confirm the transaction.

![ICN_1](https://github.com/user-attachments/assets/2389f48c-962a-4fae-907f-1c155ea6ee38)

Next, go to the [Testnet site](https://testnet.icn.global) and connect our main wallet. Here we can perform various tasks to get XP. In order to perform tasks related to the node, we need to run it. 

Node requirements:
- Ubuntu 22.04 or newer
- 2CPU/2gbRAM/50SSD

## ICN Testnet Node Launch. All actions 

Installation can be done according to official recommendations, but you can also use our script, the functionality of which is described in the chapter "NodeMafia script fore ICN".

Go into Ubuntu and update.
```
sudo apt update
sudo apt upgrade
```
Next, create a separate screen for the node.
```
sudo apt install screen
screen -S ICN
```
Run the node installation script. Instead of your_private_key specify the private key from your new EVM wallet without 0x !
```
curl -o- https://console.icn.global/downloads/install/start.sh | bash -s -- -p your_private_key
```
![ICN_3](https://github.com/user-attachments/assets/4c8e928d-361c-4dfe-bd3e-fae83e8e6461)

Now we should wait a while to collect our XP for node-related tasks.

![image](https://github.com/user-attachments/assets/5c91c452-0f76-4068-bb81-0fc9e37715c3)

That's it for now (Nov. 13, 24) this is all activity on the testnet.

## NodeMafia script fore ICN. Install, restart, update, and track logs.

![image](https://github.com/user-attachments/assets/7065f449-30c5-4405-b196-e67f23c37884)

```
curl -sO https://raw.githubusercontent.com/NodeMafia/ICN_Node_Community_Guide/refs/heads/main/ICN_Setup.sh && chmod +x ICN_Setup.sh && ./ICN_Setup.sh
```

Functions:

1) Install ICN node
2) Restart ICN node
3) View logs of ICN node

# Links 
https://console.icn.global/dashboard
https://testnet.icn.global

## NodeMafia. We hope our content is useful for you.
![image](https://github.com/user-attachments/assets/e0dc7aee-f823-41d2-a406-9e8837778964)

GitHub: https://github.com/NodeMafia

Medium: https://medium.com/@nodemafia

Telegram: https://t.me/nodemafia

Teletype: https://teletype.in/@nodemafia

Twitter: https://x.com/NodeMafia
