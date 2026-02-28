---
title: How to recover bitcoin (BTC) I accidentally sent to a FTC wallet?
intercom_id: '13619771'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220006
description: >-
  If you sent BTC to an FTC address, you may be able to recover them. Send this
  guide to the receiver and they will have to follow these ste...
url: >-
  https://help.edge.app/en/articles/13619771-how-to-recover-bitcoin-btc-i-accidentally-sent-to-a-ftc-wallet
---
If you sent BTC to an FTC address, you may be able to recover them. Send this guide to the receiver and they will have to follow these steps.

For the receiver, you will need:

1\. The master private key of your FTC wallet

2\. A tool useful to find the private key of the receiver wallet

3\. Sweep the funds from that private key

1.To view the Private Seed of your FTC wallet, as well as other types of cryptocurrency wallets, simply press and hold the wallet's name at the Wallets list screen.

**WARNING: Exposing your private keys can be risky if you do not take the right precautions. Using a private browser or opening the derivation tool on an air-gapped PC will help prevent malicious software from stealing your keys. Remember to close the notepad once done.**

Next, tap on Master Private Key. You will be prompted for your password. Enter your password.

After entering your password you will be able to view your Private Seed. Each type of cryptocurrency wallet will have its own unique private seed.

The Private Seed cannot be copied, in order to prevent users from accidentally pasting this sensitive information into an unintended location.

We urge users to never share their Private Seed with anyone, as anyone that gains knowledge of the Private Seed will be able to sweep the funds out of the wallet.

  
2\. Now you need to derive the individual private keys: we recommend using Ian Coleman's tool [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/). All bitcoin-related currencies in Edge can be derived using this tool.  
  
Generally, the process to derive private keys is the same for each currency and involves these three steps:  
\-Enter private seed (24 word phrase) into the "BIP39 Mnemonic" field  
\-Change the Coin  
\-Select a derivation path <-- This step may be different depending on the coin and which type of address you are attempting to derive a private key for.

But in your case you will need:

-   keep the coin field on Bitcoin
    
-   Select Bip 141
    
-   Enter the custom derivation path m/49'/8'/0'/0
    

Search for the address you accidentally sent BTC to. If you find it, on the right you'll see its private key.

3\. Open Edge, go to Assets, BTC (Segwit) wallet. From here you will Sweep the Private Key: click Send, paste that private key or scan the QR Code, select Import and wait for the funds to be transferred into your BTC wallet.  
A BTC transaction will be created, then you will pay a variable fee depending on the conditions of the Bitcoin network.

Please let me know if you are able to recover your funds using this guide.
