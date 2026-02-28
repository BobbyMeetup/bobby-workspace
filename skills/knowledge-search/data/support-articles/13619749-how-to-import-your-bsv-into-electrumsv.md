---
title: How to import your BSV into ElectrumSV
intercom_id: '13619749'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770219977
description: >-
  BitcoinSV wallet status: *deprecated*

  Edge accounts can no longer synchronize with the BSV blockchain. The BSV node
  operator that allowed ...
url: >-
  https://help.edge.app/en/articles/13619749-how-to-import-your-bsv-into-electrumsv
---
# BitcoinSV wallet status: \*deprecated\*

Edge accounts can no longer synchronize with the BSV blockchain. The BSV node operator that allowed our implementation to work went offline. We've not been able to find a long-term solution and had to make the hard call to end support for the BSV asset within Edge.

Your funds are safe! Edge is a self-custody wallet, which means **only you** can create access to your coins. Edge empowers you to "hold your own keys," so you can create access to your coins at any time by exporting your private key/seed phrase into an operational client. Our top recommendation would be ElectrumSV to access your coins and be able to send them to another BSV wallet.  
  
Note: If ElectrumSV doesn't work, you can try with another app. Follow this guide: [BSV Wallet Paused: How to export private seed and access your coins](https://support.edge.app/hc/en-us/articles/21985270263067-BSV-Wallet-Paused-How-to-export-private-seed-and-access-your-coins)  
  
​

# Exporting your BSV seed from Edge

1.  Login into Edge
    
2.  Tap assets in the bottom navigation bar
    
3.  Hold-down on your BSV wallet and select **Get** **Raw Keys** from the options
    
4.  Input your Password and safely write down your 24-word seed phrase
    
    -   Note if the "coinType" is something other than 236  
          
        ​
        

# Importing the wallet into ElectrumSV

1\. Download ElectrumSV to desktop (Windows or a Mac)  
[https://electrumsv.io/download.html](https://electrumsv.io/download.html)

![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027067198/558fde406cb499b6dd4703b22f17/20884997758107?expires=1770786000&signature=b7d4646a45c9595b42c2cc796fa386f71605088913fc49c6b1eb33318d9f9c07&req=diAlEcl4moBWUfMW1HO4zSlfgN58mVDKfUW4dfSexn4myrk693u8%2B4x50Ykp%0AQGi%2F%0A)

2\. Open up the app and click the **Continue** button

![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027067238/4564264cb93b0e9016492d6412c6/20884997761051?expires=1770786000&signature=15eb065e76ab64895e39ecc6b3aa346f3cf31c78445ff11ca5790e6fc15a3e00&req=diAlEcl4moNcUfMW1HO4zag%2F3S9vUZ9lpkQ%2BD5%2BbN9XM%2FvE7OD9VMB3Lh8dO%0A%2BHS9%0A)

3\. Select the option to **Create New Wallet** near the bottom

![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027067281/31caa050d9f116918b3eaaf6a124/20884997762843?expires=1770786000&signature=64d3d02338864b0ceab0fef78c9cbeb3e2111a0740568390545e216aac59e4c4&req=diAlEcl4moNXWPMW1HO4za19%2FAUgaNB7v6Z3Z3Eb92sdLgAPtGHfivn5q9Bz%0AEwqL%0A)

![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027067339/5aa98594f25133a02c43ad37e33f/20884997763099?expires=1770786000&signature=e22b01ef9dccffd5d0e2e8f00ccc8ac246c9323bf7b262cf64f3a180f3d6c9e0&req=diAlEcl4moJcUPMW1HO4zQB8agnHMjPHPgNNXcqLUIJVlzdZynFYhQ90hfil%0AqL4l%0A)

4\. Set *(and don't forget!)* a wallet file name and Password for this wallet; press **OK**

![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027067392/1093c7e3dfce141799309bca2a15/20885017352347?expires=1770786000&signature=32c7798a048bc03603d0be634e0b840025e75e3a2fbb33eddaf77c39514780d8&req=diAlEcl4moJWW%2FMW1HO4zWEtdMLn1rBSLQZU%2FxvS%2FUGSR0mVpwjpq47Hrr5l%0A7GNd%0A)

5\. In the top left corner, use the **Add Account** button

![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027067443/ccd8e27ce8d147280864992b6f57/20884997768731?expires=1770786000&signature=cb23e7233aa2e9f3a32580096177e50c0704a65b9f67f81adba8b424e9d32b35&req=diAlEcl4moVbWvMW1HO4zR8Jgmq0zGsskD3gNMdOQxEY4v6ck7LQxxLCqhBO%0A6bSA%0A)

6\. Now select the option to "**Import from text** (any seed phrase)..." and press **Continue**

![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027067534/1f726eb913f10db2acbf078bf220/20884997768859?expires=1770786000&signature=da1b122ba6dcbcb4d4c2655ab9951e59f40fccac7938913eeb5ed822546b12fb&req=diAlEcl4moRcXfMW1HO4zfcgnnCKR%2BjO4NJlJKAWdT8rqizQiZHRzQnYynwZ%0AI2Xb%0A)

7\. Enter in your 24-word private seed phrase from Edge, then click on **Customize\*** instead of Done -

**\*Important Step!!!  
**(do not click Done ...yet)

![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027067658/82e5c03737e9bc2c8725ae280dc5/20884997772059?expires=1770786000&signature=a03dafd42bd4b7cbb6467046194633fc23f6c1f184e309d4a9e11ddda3f9e655&req=diAlEcl4modaUfMW1HO4zQ7XTvYjRwlhBBaMqbu%2FZZHv5NtwZ0DnhJumlMOE%0AVAET%0A)

![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027067698/38a8039f927849930d73f6bf6bd4/20885017413659?expires=1770786000&signature=2b5972cef6ffde8f5a94c7aaf9720bfec4056451bbf7e97848fd1526d79a2c6f&req=diAlEcl4modWUfMW1HO4ze%2Fa03BQuGMkpaR1M8l%2FT6U67PIgWCve9DXP7j2S%0AuATv%0A)

8\. Next, modify the first 0 to 236, or whichever “coinType” number you found in the Raw Keys file for your BSV wallet in Edge. BSV's derivation path is typically **m/44'/236'/0'** - unless the wallet was originally for a different coin type.

*For example: If you split a BCH wallet to get initially create this BSV wallet, a derivation path with the BCH coin type (145) would be needed to derive the correct addresses for your coins (m/44'/145'/0')*

*Note: If any import failure occurs, try adding another **/0** to the end: **m/44'/236'/0'/0***

![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027067757/3ae34921b3a4c4eb8e22941ae71b/20885017415067?expires=1770786000&signature=f423f25f96b3de685b6d0552dfb9e6239a1639e044923beb54a6114d9fabcffa&req=diAlEcl4moZaXvMW1HO4zSrnEd%2B4dEmslHZaqUehgI5Vj7szZ%2FJfZ7RvuDC8%0AYBv0%0A)

9\. Enter your Password (from Step 4) and click **OK** to finish importing the wallet

![](https://edge-1a5ed69e1271.intercom-attachments-7.com/i/o/ourx4xix/2027067823/02cf7a6a5799301001372d16015f/20884997779099?expires=1770786000&signature=997237bccb40213ddbc3d3693d35ef66fbc66c7f19b1a452018b61844cc8d76f&req=diAlEcl4moldWvMW1HO4zatN9oglcU6J4ToTEnrGGFenjVC7EGq6YS9ZLDFA%0AWFHB%0A)

At the bottom of the app, your current BSV balance should appear immediately! 🎉

You may now send your BSV to any other BSV wallet. If you want to trade or sell it, you may contact our support team to request access to our internal exchanges to use directly from ElectrumSV.
