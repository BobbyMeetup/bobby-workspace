---
title: Edge Private Seeds - Derivation and Export
intercom_id: '13619716'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770219922
description: >-
  WARNING: Exposing your private keys can be risky if you do not take the right
  precautions. Using a private browser or opening the derivati...
url: >-
  https://help.edge.app/en/articles/13619716-edge-private-seeds-derivation-and-export
---
**WARNING**: Exposing your private keys can be risky if you do not take the right precautions. Using a private browser or opening the derivation tool on an air-gapped PC will help prevent malicious software from stealing your keys. Most users will not need to follow these steps and they are presented for informational use only.

  
If you need to derive individual private keys we recommend using Ian Coleman's tool [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/). All bitcoin-related currencies in Edge can be derived using this tool. If you are exporting an Edge wallet seed to use in another wallet you can find the appropriate derivation path in the table below.  
  
Generally, the process to derive private keys is the same for each currency and involves these three steps:  
\-Enter private seed (24 word phrase) into the "BIP39 Mnemonic" field  
\-Change the Coin  
\-Select a derivation path <-- This step may be different depending on the coin and which type of address you are attempting to derive a private key for.

<table role="presentation"><tbody><tr><td><p class="no-margin">Coin</p></td><td><p class="no-margin">Derivation Path</p></td><td><p class="no-margin">Full Derivation Path</p></td></tr><tr><td><p class="no-margin">Bitcoin</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/0'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin (no segwit)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/0'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin Cash (BCH)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/145'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin Gold (BTG)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/156'/0'/0</p></td></tr><tr><td><p class="no-margin">Bitcoin SV (BSV)**</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/236'/0'/0</p></td></tr><tr><td><p class="no-margin">Dash (DASH)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/5'/0'/0</p></td></tr><tr><td><p class="no-margin">DigiByte (DGB)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/20'/0'/0</p></td></tr><tr><td><p class="no-margin">Dogecoin (DOGE)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/3'/0'/0</p></td></tr><tr><td><p class="no-margin">eBoost (EBST)*</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/324'/0'/0</p></td></tr><tr><td><p class="no-margin">Feathercoin (FTC)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/8'/0'/0</p></td></tr><tr><td><p class="no-margin">GroestlCoin (GRS)*</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/17'/0'/0</p></td></tr><tr><td><p class="no-margin">Litecoin (LTC)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/2'/0'/0</p></td></tr><tr><td><p class="no-margin">QTUM*</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/2301'/0'/0</p></td></tr><tr><td><p class="no-margin">Ravencoin (RVN)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/175'/0'/0</p></td></tr><tr><td><p class="no-margin">SmartCash (SMART)*</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/224'/0'/0</p></td></tr><tr><td><p class="no-margin">Uniform Fiscal Object (UFO)*</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/202'/0'/0</p></td></tr><tr><td><p class="no-margin">Vertcoin (VTC)</p></td><td><p class="no-margin">BIP49</p></td><td><p class="no-margin">m/49'/28'/0'/0</p></td></tr><tr><td><p class="no-margin">Zcoin (XZC)</p></td><td><p class="no-margin">BIP44</p></td><td><p class="no-margin">m/44'/136'/0'/0</p></td></tr></tbody></table>

\* = not available on [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/)

\*\* = if you are trying to import the wallet into ElectrumSV, please try with derivation path m/44'/236'/0' instead of m/44'/236'/0'/0.  
If you splitted a BCH wallet to get the corresponding BSV wallet, then try with derivation path m/44'/145'/0'/0 or m/44'/145'/0'/.
