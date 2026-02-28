---
title: Recover Bitcoin (BTC) sent to a Bitcoin Cash (BCH) address
intercom_id: '13619775'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220013
description: >-
  Bitcoin (BTC) sent to a Bitcoin Cash (BCH) address can be recovered by
  completing the following steps very closely:



  1) First, we need to...
url: >-
  https://help.edge.app/en/articles/13619775-recover-bitcoin-btc-sent-to-a-bitcoin-cash-bch-address
---
# Bitcoin (BTC) sent to a Bitcoin Cash (BCH) address can be recovered by completing the following steps very closely:

  
1) First, we need to identify the **BCH address** that these funds were accidentally sent to (starting with "1..." or "3...").  
  
2) Next, we will need to derive the **private key** for this specific address. For that, we need the seed phrase for your BCH wallet, so you should open your wallet app to the BCH wallet where you tried sending the funds and find the seed phrase. In Edge, tap the three vertical dots (⋮) to access this wallet's menu and tap "**Master Private Key**" to enter your password and view your seed phrase.  
  
3) Take this seed phrase and enter it into this derivation tool: [https://edge.app/recovery](https://edge.app/recovery)  
  
After entering your seed phrase, you should see a long list of Bitcoin addresses below. These are all the possible BTC addresses that can be created using your seed phrase.

  
4) Use the "**Coin**" dropdown menu to switch from *"**Bitcoin**"* to *"**Bitcoin Cash**"*  
  
5) If the BCH address where you sent the funds **started with "1..."** then toggle on the option for ***"Use legacy addresses for Bitcoin Cash (ie starting with '1')"***  
  
6) Now, please scroll down and search the page for your BCH address that was used. If your BCH address **started with "3..."** then you may need to change the **"Derivation Path"** page to ***BIP49*** (or BIP141)  
  
*If you have used this BCH wallet many times before, you may need to tap "More Rows" to generate more addresses and find yours.*  
  
7) Once you have found your address, now we just need to **"sweep"** the funds by using the private key. This **private key** is listed on the same row as your BCH address, but in the far-right column. Simply hover your mouse over the private key (or tap on mobile devices) and a **QR code will appear**.  
  
8) For the last step, you just need to open your Edge app and **scan this QR code** to sweep the funds into your own BTC wallet. Tap the three horizontal lines (≡) in upper-right of screen to access side menu and select "Scan QR" to open up the camera and scan this new QR code. Then select the **Bitcoin (BTC) wallet** where you want the funds to go and confirm the sweep.  
  
*This is an on-chain transaction, moving the funds from the original destination to your BTC wallet, but you should see your BTC funds in just a few moments.*  
  
Please contact support if you have any questions or need additional assistance.

**WARNING: Exposing your private keys can be risky if you do not take the right precautions. Be sure not to store this information digitally or share with anybody online.**
