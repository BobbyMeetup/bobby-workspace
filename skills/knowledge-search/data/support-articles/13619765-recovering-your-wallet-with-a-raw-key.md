---
title: Recovering your wallet with a raw key.
intercom_id: '13619765'
workspace_id: ourx4xix
state: draft
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220000
description: "If your wallet will not load or you only have access to your Raw Key you can still recover your wallet by following these steps.\_\n\nPlease ..."
---
If your wallet will not load or you only have access to your Raw Key you can still recover your wallet by following these steps.

**Please note that exposing your Raw Key can put your account at risk and should only be done on secure and trusted devices.**

This method is best done with 2 devices however it can be done from your single device. The best set-up would be your device with Edge installed and logged in to your Edge account and a computer such as a laptop, desktop, etc.

When you're ready to recover you wallet follow these steps:

1.  Access the raw keys
    
2.  Take note of your Raw Key and then visit: [http://tomeko.net/online\_tools/base64.php?lang=en](http://tomeko.net/online_tools/base64.php?lang=en)
    
3.  Enter the raw keys of the text under the "Base64 string"
    
4.  Click on "User lowercase hex characters" and then click on Convert. (This will convert to the private seed text to a usable format for the primary recovery tool)
    
5.  Copy the newly converted string of characters under "Decoded data (hexadecimal)" and then visit [https://edge.app/recovery](https://edge.app/recovery)
    
6.  Once you're at the website titled "Mnemonic Code Converter" look for the text field labeled "Private Key Hex" and paste or type the decoded data.
    
7.  Above that field select the cryptocurrency you are recovering.
    
8.  Scroll down to the section labeled "Derivation Path" and then click on the tab labeled "BIP32"
    
9.  Find the text field labeled "BIP32 Derivation Path" it will have "m/0" input there by default. To sweep into your Edge wallet you will need to add "/0" so the text there should read **m/0/0**
    
10.  Scroll down to the "Derived Addresses" section and look for the table. You will want to find the section labeled "Private Key", you should be able to click on the addresses to be presented with a QR code. This is what you will use to sweep.
     
11.  Now open your Edge app and tap menu located at the upper right, look for "Sweep Private Key" and tap on that. You will be presented with your camera. Check that the wallet on the top of screen is the wallet that you want to sweep into.
     
12.  Point your camera at the
     

**tomeko.net**

**[Tomasz Ostrowski - Base64 decoder](http://tomeko.net/online_tools/base64.php?lang=en)**

On-line javascript base 64 to hexadecimal string decoder.

[3:35](https://edgesecure.slack.com/archives/D01A1AT2821/p1609878927002200)

edge.app/recovery  
set to btc  
enter private seed from airbitz format to private key hex field  
set to bip32  
custom derivation path to m/0/0

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)
