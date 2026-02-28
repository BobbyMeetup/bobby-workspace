---
title: >-
  How to recover bitcoin sent to the correct wallet but to an address coming
  from the wrong derivation path?
intercom_id: '13619774'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220011
description: >-
  Some advanced users export their XPub from their wallet created on Edge and
  derive their addresses with other apps or with explorers.



  Th...
url: >-
  https://help.edge.app/en/articles/13619774-how-to-recover-bitcoin-sent-to-the-correct-wallet-but-to-an-address-coming-from-the-wrong-derivation-path
---
Some advanced users export their XPub from their wallet created on Edge and derive their addresses with other apps or with explorers.

There are some circumstances that they use a different derivation path then the one used by Edge.  
  
For example, they could obtain Legacy addresses (technically called P2PKH) that are addresses starting with "1", instead of the SegWit addresses (technically P2SH-P2WPKH) of their Bitcoin wallet inside Edge.

When they pay to these addresses, they don't see the funds on their wallet inside Edge.

If you are in this situation, you can try to recover your funds sent to the address from a different derivation path, following these steps.

You will need:

1\. The master private key of your BTC wallet

2\. A tool useful to find the private key of the receiver wallet

3\. Sweep the funds from that private key

1.To view the Private Seed of your Bitcoin wallet simply tap and hold the wallet at the Assets list screen.

**WARNING: Exposing your private keys can be risky if you do not take the right precautions. Using a private browser or opening the derivation tool on an air-gapped PC will help prevent malicious software from stealing your keys. Remember to close the notepad once done.**  
  
​

Next, tap on Master Private Key. You will be prompted for your password. Enter your password.

After entering your password you will be able to view your Private Seed.

The Private Seed cannot be copied, in order to prevent users from accidentally pasting this sensitive information into an unintended location.

We urge users to never share their Private Seed with anyone, as anyone that gains knowledge of the Private Seed will be able to sweep the funds out of the wallet.

  
2\. Now you need to derive the individual private keys: we recommend using Ian Coleman's tool [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/). All bitcoin-related currencies in Edge can be derived using this tool.  
​

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

*24 seeds from an Edge wallet are entered in the BIP39 Mnemonic field*

Generally, the process to derive private keys is the same for each currency and involves these three steps:-Enter private seed (24 word phrase) into the "BIP39 Mnemonic" field  
\-Change the Coin  
\-Select a derivation path <-- This step may be different depending on the coin and which type of address you are attempting to derive a private key for.

<table role="presentation"><tbody><tr><td><p class="no-margin">Coin</p></td><td><p class="no-margin">Derivation Path</p></td><td><p class="no-margin">Full Derivation Path</p></td></tr><tr><td><p class="no-margin">Bitcoin</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/0'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin (no segwit)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/0'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin Cash (BCH)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/145'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin Gold (BTG)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/156'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin SV (BSV)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/145'/0'/0</p></td></tr><tr><td><p class="no-margin">Dash (DASH)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/5'/0'/0</p></td></tr><tr><td><p class="no-margin">DigiByte (DGB)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/20'/0'/0</p></td></tr><tr><td><p class="no-margin">Dogecoin (DOGE)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/3'/0'/0</p></td></tr><tr><td><p class="no-margin">eBoost (EBST)*</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/324'/0'/0</p></td></tr><tr><td><p class="no-margin">Feathercoin (FTC)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/8'/0'/0</p></td></tr><tr><td><p class="no-margin">GroestlCoin (GRS)*</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/17'/0'/0</p></td></tr><tr><td><p class="no-margin">Litecoin (LTC)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/2'/0'/0</p></td></tr><tr><td><p class="no-margin">QTUM*</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/2301'/0'/0</p></td></tr><tr><td><p class="no-margin">Ravencoin (RVN)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/175'/0'/0</p></td></tr><tr><td><p class="no-margin">SmartCash (SMART)*</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/224'/0'/0</p></td></tr><tr><td><p class="no-margin">Uniform Fiscal Object (UFO)*</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/202'/0'/0</p></td></tr><tr><td><p class="no-margin">Vertcoin (VTC)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/28'/0'/0</p></td></tr><tr><td><p class="no-margin">Zcoin (XZC)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/136'/0'/0</p></td></tr></tbody></table>

\* = not available on [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/)

In your case choose Bitcoin (no Segwit) Bip 44 m/44'/0'/0'/0.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

*With those seeds and the selected coin, I have this Root Key*

Search for the address you accidentally sent BTC to. When you find it, on the right you'll see its private key.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

If you don't find this address in the firsts places, go up to the Derivation Path section, click on BIP32

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

Here you can try different paths.

a) In BIP32 Derivation Path field you can see m/0

First of all, go down to Derived Addresses and see if you see your address.  
b) If you don't, change this Derivation Path field to m/49'/0'/0' and look again to the Derived Address section.

c) If you cannot find the address, change the Derivation Path field to m/44'/0'/0' an look again to the Derived Address section.

d) If you cannot find the address, change the Derivation Path field to m/44'/0'/0'/0/ (you see a one more zero), and look again.

e) Repeat but with Derivation Path field to m/49'/0'/0'/0/

3\. When you find your address+private key, open Edge, go to Wallets, Create a new Bitcoin wallet (no SegWit) and then open it. From here you will Sweep the Private Key you found: click Send, paste that private key or scan the QR Code, select Import and wait for the funds to be transferred into your BTC wallet.  
A BTC transaction will be created, then you will pay a variable fee depending on the conditions of the Bitcoin network.
