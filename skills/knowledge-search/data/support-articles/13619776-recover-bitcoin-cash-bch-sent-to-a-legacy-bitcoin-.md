---
title: Recover Bitcoin Cash (BCH) sent to a "legacy" Bitcoin (BTC) address
intercom_id: '13619776'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220014
description: "Bitcoin Cash (BCH) sent to a \"legacy\" Bitcoin (BTC) address can be recovered by completing the following steps very closely:\n\n\_\n1) First, ..."
url: >-
  https://help.edge.app/en/articles/13619776-recover-bitcoin-cash-bch-sent-to-a-legacy-bitcoin-btc-address
---
# Bitcoin Cash (BCH) sent to a "legacy" Bitcoin (BTC) address can be recovered by completing the following steps very closely:

1) First, we need to identify the **original BTC address** that these funds were sent to. Your transaction details in Edge will show the Bitcoin Cash format because it automatically converts it for compatibility, but we need the original "legacy" address that you entered (starting with a "1...").  
  
For BCH sent to a Bitcoin address starting with a "3..." view our other article: [How to recover my BCH if I accidentally sent into a Bitcoin Segwit Address on Edge?](https://support.edge.app/hc/en-us/articles/7021750291227)  
  
*If you do not know the BTC address, we can use this tool to convert between the two address types. Simply paste in the address from your BCH transaction (starting with "q...") and click convert.*

BCH Address Converter: [https://cashaddr.bitcoincash.org/](https://cashaddr.bitcoincash.org/)  
  
2) Next, we will need to derive the public key for this address. For this we need the **seed phrase for your BTC wallet**, so you should open your Edge app to the Bitcoin wallet where you tried sending the funds. Then, tap the three vertical dots (⋮) to access this wallet's menu and tap "Master Private Key" to enter your password and view your seed phrase.  
  
Take this seed phrase and enter it into this derivation tool: [https://edge.app/recovery](https://edge.app/recovery)  
  
*After entering your seed phrase, you should see a long list of Bitcoin addresses below. These are all the possible BTC addresses that can be created using your seed phrase.*  
  
3) Now, please scroll down and search the page for your **BTC address that was used** (starting with "1..."). If you have used this BTC wallet many times, you may need to tap "More Rows" to generate more addresses and find yours.  
  
4) Once you have found your address, now we need to "sweep" the funds by using the **private key**. This private key is listed on the same row as your BTC address but in the far-right column. Simply hover your mouse over the private key (or tap on mobile devices) and a **QR code will appear**.  
  
5) For the last step, you just need to open your Edge app and **scan this QR code to sweep the funds into your own BCH wallet**. Tap the three horizontal lines (≡) in upper-right of screen to access side menu and select "Scan QR" to open up the camera and scan this new QR code. Then select the Bitcoin Cash (BCH) wallet where you want the funds to go and confirm the sweep.  
  
*This is an on-chain transaction, moving the funds from the original destination to your BCH wallet, but you should see your BCH funds in just a few moments.*  
  
​

Please contact support if you have any questions or need additional assistance.

**WARNING: Exposing your private keys can be risky if you do not take the right precautions. Be sure not to store this information digitally or share with anybody online.**
