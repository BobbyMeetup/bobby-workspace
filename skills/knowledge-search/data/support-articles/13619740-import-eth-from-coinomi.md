---
title: Import ETH from Coinomi
intercom_id: '13619740'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770219958
description: >-
  Users attempting to import from ETH from Coinomi will notice that the address
  is different once the import is complete. This can be alarmi...
url: 'https://help.edge.app/en/articles/13619740-import-eth-from-coinomi'
---
Users attempting to import from ETH from Coinomi will notice that the address is different once the import is complete. This can be alarming however we can recover the funds. Coinomi uses a different derivation path which means we will need to derive the correct one using a special tool from this website: https://iancoleman.io/bip39/.

**Never share your recovery phrase, private key, username, or password. Edge will never ask for this information. When possible do all recovery offline.**

You will need your Coinomi recovery phrase, a web browser or device with [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/) installed, and a device with Edge installed (this can be the same device as the iancoleman tool).

To recover the key we will be using [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/) which will help us find the correct key. We advice downloading the page as a file and using offline if possible. This is the most secure way to recover keys, if you choose to use the website please understand you are sending private information across the internet.

You will need your Coinomi recovery phrase, a web browser or device with [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/) installed, and a device with Edge installed (this can be the same device as the iancoleman tool).

1.  Visit: [https://iancoleman.io/bip39/](https://iancoleman.io/bip39/) or use the downloaded file.
    
2.  Locate the field labeled BIP39 Mnemonic and enter your recovery phrase, the Coinomi phrase. Example:
    
    ![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027062910/395b5fd94836fbb6c21bc04c5142/27134422917147?expires=1770786000&signature=d4f2b74eb8dad09f09b64a105348ae420277fb0db3485c0e03a574ed57c97326&req=diAlEcl4n4heWfMW1HO4zSpsHVCPLszfvVC44ytuEGvVlsJMRRvcF%2FusS6Sc%0Agmxs%0A)
    
3.  If you used a BIP39 Passphrase you will need to enter in the BIP39 Passphrase field. Leave this field empty if you did not create a passphrase.
    
4.  Select ETH from the "Coin" dropdown. Example:
    
    ![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027062953/92454686aeb3b48e5082a00ab2cc/27134422919963?expires=1770786000&signature=60506fd04e1016195cb3a3e0a5eb5392fdd8b892da59a19a7a97a3dd7212b79d&req=diAlEcl4n4haWvMW1HO4zXBWdJSUxjDUYvbr%2FRRpL8k2MDxAMKH3%2FzZoQ9c7%0AWfBF%0A)
    
5.  Scroll to the "Derived Addresses" section and then locate the private key that matches your address in Coinomi. You will need this key for the import into Edge. Example:
    
    ![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027062993/10c9a01700586576648e19c66154/27134422920987?expires=1770786000&signature=508586c45861de67145621664df4267777fe6864c5308c0f6e9f6a1095907e5d&req=diAlEcl4n4hWWvMW1HO4zXbF1onhExk0s0MN7UTpqUzvMEVEE0g30VlR42Hz%0A0JWg%0A)
    
6.  Within Edge tap "Assets" located at the bottom of the app and then tap the "+" to add/import wallets. Example:  
    ​
    
    ![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027063046/74774034b43019e8ed6ac304facb/27134422921755?expires=1770786000&signature=6b9d9f0270a5ae8fcac72e4b540aec00705247d06234f2374c9a3b26891d99a6&req=diAlEcl4noFbX%2FMW1HO4zTVswOMvTlJSG1LIbWQg5U%2BDcWcdnIQNRZK8c3WG%0ARFMs%0A)
    
7.  Toggle on ETH and then tap next.
    
8.  Review the information and then tap "Import Wallets"
    
9.  Enter the Private Key (the one that matched Coinomi viewed on the Iancoleman tool), tap next.
    
10.  The following screen will have a Migrate option. This option will move the funds to a new private key to help protect your funds. We advise doing this because the import process does expose keys a network fee will be used to migrate. If you want to use this key across multiple platforms do not migrate. Tap Next.
