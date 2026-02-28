---
title: How to Recover BCH sent to BSV
intercom_id: '13619769'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220004
description: "If you accidentally sent your Bitcoin Cash (BCH) to a BSV (BSV) address, you can try a recover.\n\n\_\nHere below the steps:\n\_\n1. Take note of..."
url: 'https://help.edge.app/en/articles/13619769-how-to-recover-bch-sent-to-bsv'
---
If you accidentally sent your Bitcoin Cash (BCH) to a BSV (BSV) address, you can try a recover.

Here below the steps:

1\. Take note of the Master Private Key of the BSV wallet to which you sent the BCH.  
Open Edge, Tap "Assets" located within the bottom navigation bar, tap and hold BSV wallet, tap Master Private Key, enter your password and copy those words one by one on a notepad (you cannot copy them directly).

**WARNING: Exposing your private keys can be risky if you do not take the right precautions. Using a private browser or opening the derivation tool on an air-gapped PC will help prevent malicious software from stealing your keys. Most users will not need to follow these steps and they are presented for informational use only. Remember to close the notepad once done.**  
  
2\. Now you need to derive the individual private keys: we recommend using Ian Coleman's tool [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/). All bitcoin-related currencies in Edge can be derived using this tool.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

Generally, the process to derive private keys is the same for each currency and involves these three steps:-Enter private seed (24 word phrase) into the "BIP39 Mnemonic" field-Change the Coin

\-Select a derivation path <-- This step may be different depending on the coin and which type of address you are attempting to derive a private key for.

<table role="presentation"><tbody><tr><td><p class="no-margin">Coin</p></td><td><p class="no-margin">Derivation Path</p></td><td><p class="no-margin">Full Derivation Path</p></td></tr><tr><td><p class="no-margin">Bitcoin</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/0'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin (no segwit)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/0'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin Cash (BCH)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/145'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin Gold (BTG)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/156'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin SV (BSV)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/145'/0'/0</p></td></tr><tr><td><p class="no-margin">Dash (DASH)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/5'/0'/0</p></td></tr><tr><td><p class="no-margin">DigiByte (DGB)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/20'/0'/0</p></td></tr><tr><td><p class="no-margin">Dogecoin (DOGE)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/3'/0'/0</p></td></tr><tr><td><p class="no-margin">eBoost (EBST)*</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/324'/0'/0</p></td></tr><tr><td><p class="no-margin">Feathercoin (FTC)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/8'/0'/0</p></td></tr><tr><td><p class="no-margin">GroestlCoin (GRS)*</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/17'/0'/0</p></td></tr><tr><td><p class="no-margin">Litecoin (LTC)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/2'/0'/0</p></td></tr><tr><td><p class="no-margin">QTUM*</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/2301'/0'/0</p></td></tr><tr><td><p class="no-margin">Ravencoin (RVN)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/175'/0'/0</p></td></tr><tr><td><p class="no-margin">SmartCash (SMART)*</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/224'/0'/0</p></td></tr><tr><td><p class="no-margin">Uniform Fiscal Object (UFO)*</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/202'/0'/0</p></td></tr><tr><td><p class="no-margin">Vertcoin (VTC)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/28'/0'/0</p></td></tr><tr><td><p class="no-margin">Zcoin (XZC)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/136'/0'/0</p></td></tr></tbody></table>

\* = not available on [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/)

In your case choose Bitcoin Cash Bip 44 m/44'/145'/0'/0.

Look down and search for the address you accidentally sent BCH to. When you find it, on the right you'll see the private key.

If you hover over the private key it will give you a QR code that will make the next step easier.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

3\. Open Edge, Wallets, and then go to your BCH wallet. From here you will Sweep the Private Key. Click on Send, paste that private key or scan the QR Code, select Import and wait for the funds to be transferred into your BCH wallet.  
A BCH transaction will be created, then you will pay a variable fee depending on the conditions of the Bitcoin Cash network.
