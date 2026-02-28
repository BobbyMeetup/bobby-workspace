---
title: How to recover DigiByte (DGB) I accidentally sent to a DOGE address?
intercom_id: '13619772'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220008
description: >-
  If you sent DGB to a DOGE address, you may be able to recover them. Send this
  guide to the receiver and they will have to follow these ste...
url: >-
  https://help.edge.app/en/articles/13619772-how-to-recover-digibyte-dgb-i-accidentally-sent-to-a-doge-address
---
If you sent DGB to a DOGE address, you may be able to recover them. Send this guide to the receiver and they will have to follow these steps.

For the receiver, you will need:

1\. The master private key of your DOGE wallet (These steps are for Edge however these steps are common for every non-custodial wallet)

2\. A tool useful to find the private key of the receiver wallet

3\. Sweep the funds from that private key

1.To view the Private Seed of your DOGE wallet, as well as other types of cryptocurrency wallets, simply press and hold on the Doge wallet's name, click Master Private Key. If the external wallet is not an Edge Wallet, you need to export your seeds with the correct procedure of that specific app.

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

<table role="presentation"><tbody><tr><td><p class="no-margin">Coin</p></td><td><p class="no-margin">Derivation Path</p></td><td><p class="no-margin">Full Derivation Path</p></td></tr><tr><td><p class="no-margin">Bitcoin</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/0'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin (no segwit)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/0'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin Cash (BCH)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/145'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin Gold (BTG)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/156'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin SV (BSV)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/145'/0'/0</p></td></tr><tr><td><p class="no-margin">Dash (DASH)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/5'/0'/0</p></td></tr><tr><td><p class="no-margin">DigiByte (DGB)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/20'/0'/0</p></td></tr><tr><td><p class="no-margin">Dogecoin (DOGE)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/3'/0'/0</p></td></tr><tr><td><p class="no-margin">eBoost (EBST)*</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/324'/0'/0</p></td></tr><tr><td><p class="no-margin">Feathercoin (FTC)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/8'/0'/0</p></td></tr><tr><td><p class="no-margin">GroestlCoin (GRS)*</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/17'/0'/0</p></td></tr><tr><td><p class="no-margin">Litecoin (LTC)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/2'/0'/0</p></td></tr><tr><td><p class="no-margin">QTUM*</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/2301'/0'/0</p></td></tr><tr><td><p class="no-margin">Ravencoin (RVN)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/175'/0'/0</p></td></tr><tr><td><p class="no-margin">SmartCash (SMART)*</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/224'/0'/0</p></td></tr><tr><td><p class="no-margin">Uniform Fiscal Object (UFO)*</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/202'/0'/0</p></td></tr><tr><td><p class="no-margin">Vertcoin (VTC)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/28'/0'/0</p></td></tr><tr><td><p class="no-margin">Zcoin (XZC)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/136'/0'/0</p></td></tr></tbody></table>

\* = not available on [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/)

In your case choose DOGE Bip 44 m/44'/3'/0'/0.

Search for the address you accidentally sent DGB to. When you find it, on the right you'll see its private key.

3\. Open Edge, tap on the menu at the upper right, then tap on scan QR. From here you will Sweep the Private Key: click Send, paste that private key or scan the QR Code, select the wallet and Import and wait for the funds to be transferred into your DGB wallet.  
A DGB transaction will be created, then you will pay a variable fee depending on the conditions of the DigiByte network.
