---
title: How to recover funds sent from Binance (BEP20) to an Ethereum wallet (ERC20)
intercom_id: '13619773'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220009
description: "Edge now has the ability to split EVM chains. This means users that sent to the wrong network can now recover their funds within Edge. \_Fo..."
url: >-
  https://help.edge.app/en/articles/13619773-how-to-recover-funds-sent-from-binance-bep20-to-an-ethereum-wallet-erc20
---
Edge now has the ability to split EVM chains. This means users that sent to the wrong network can now recover their funds within Edge. For those instructions please visit: [https://edgeapp.zendesk.com/hc/en-us/articles/7020289279131-Split-your-EVM-wallet-](https://support.edge.app/hc/en-us/articles/7020289279131-Split-your-EVM-wallet-)

For the legacy instructions please continue to read. NOTE: If this is note edge related you can import your key into Edge and then split, eliminating the need to use Metamask.

Legacy instructions:

If you withdrew your ether or Ethereum tokens from Binance, received an email in which you see the hash of the transaction but you don't see these funds inside Edge, neither that hash in an Ethereum explorer like Etherscan, it is possible that you chose the BNB Smart Chain instead of the Ethereum chain while you were in the Binance Withdraw screen.

  
Your funds reached the specified Ethereum address but in the form of "Binance-peg ethereum tokens" as you can see if you go to [https://bscscan.com/](https://bscscan.com/) and enter the hash you found in your email from Binance.

  
So now you have to peg-out these tokens and send them again to your Ethereum wallet, this time under the Ethereum chain.  
The process is a bit tricky but not impossible.  
  
Below is a step by step procedure, but please feel free to contact us at support@edge.app if you need further assistance.

At the end of these steps you will see that you need to pay gas in order to peg-out your token and send them to the Ethereum blockchain.  
Just like on the Ethereum blockchain you need to pay gas in ether (ETH), in the Binance Smart Chain you need to pay in the Binance native token called BNB.

So, we'll start from here.

1\. **You need to have some BNB** so you can send these coins from your BNB wallet inside Edge to the BNB wallet inside Binance, or to send some coins/tokens to Binance and trade them for BNB.  
Go to your Binance account, click on Wallet and select BNB.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

If you have some BNB on your Edge Wallet, open the BNB wallet, go to Send, frame the **BEP2 Address** QRcode, click on the 3 vertical dots upper right and click on memo. Here enter the BEP2 Memo you see on Binance.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

Now Slide to confirm. Your BNB will be credited on Binance.

2\. **Send some of your BNB available on your Binance account to the same Ethereum address in which you sent the token in the first place**.  
You need to go to Binance, Wallet, WIthdraw and select the BNB wallet.  
Now select Binance Smart Chain (BSC) and give the require confirmations on the popup.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

Now you will have part of your BNB in your Ethereum address but under the BSC blockchain.

3\. **Export your Ethereum Master Private Key**.  
Go to your Edge wallet, search your Ethereum wallet in which you sent tokens from Binance to the Binance Smart Chain, click the 3 vertical dots on the right of your wallet (on Edge version 2, slide from right to left or tap and hold on the Ethereum wallet name and you will see the 3 vertical dots). Tap Master Private Key, enter your Edge password and manually copy the private key in a block note. Add also your Ethereum public address into this note.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

4\. **Download Metamask on your pc**. Metamask is an Ethereum wallet that gives you a Chrome extension, so you can use it in the following steps with Binance. Go to [https://metamask.io/download,](https://metamask.io/download.html,) and click on Install Metamask on Chrome.

Follow this post if you need help with the installation [https://medium.com/publicaio/how-import-a-wallet-to-your-metamask-account-dcaba25e558d#:~:text=If%20you%20have%20an%20existing,Select%20preferred%20entry%20type.](https://medium.com/publicaio/how-import-a-wallet-to-your-metamask-account-dcaba25e558d#:~:text=If%20you%20have%20an%20existing,Select%20preferred%20entry%20type.)

  
5\. **Import your Ethereum private key on Metamask**. Go to the section **Alternative option — import a wallet using a private key or JSON file** of the Medium post above and enter the Ethereum private key you copied in step 3. Now your Ethereum wallet is available inside Edge and Metamask.

6\. Now you need to **select the Binance Smart Chain in Metamask**. Click on the Metamask Chrome extension, click the upper central drop down menu and select Custom RPC.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

*This screen is in italian, so RPC Personalizzata means Custom RPC*

Here enter this parameters:  
RPC URLs  
ChainID: 0x38, 56 in decimal (if 56 doesn’t work, try 0x38)  
Symbol: BNB  
Block Explorer

as you can see here:

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

Save and be sure to see this network name as selected in the drop down menu of the previous image.

7\. You selected the Binance Smart Chain on Metamask and **now you need to add the custom token** that corresponds to the pegged token on your Ethereum address.  
In this example, I withdrew Ethereum from Binance to my Ethereum address, but on the Binance Smart Chain, so I need to add Binance-Peg Ethereum Token as a custom token on Metamask.  
In the Metamask main screen, where I see the balance, I click on Add Custom Token and enter the information I get from [https://bscscan.com/](https://bscscan.com/).

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

I need to enter the Contract info I see on the explorer, on the Metamask Custom Token screen:  
​

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

It is possible that, after you paste the address, Metamask auto-compiles the other fields.  
Press continue and save the information.  
Now on Metamask I should see the balance of the pegged-token (Ethereum in this case).

8\. **Go to [https://www.binance.org/en/bridge,](https://www.binance.org/en/bridge,) select v2 (upper right)** Click on Connect a wallet, select Metamask, accept the pairing and, once connected, you will see your Ethereum address in the right corner of Binance Bridge.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

Select Metamask:

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

9\. Now **choose your Asset**, Ethereum in this example, be sure to go from Binance Smart Chain Network to Ethereum Network, the amount you want to receive and the destination address, that could be the same, since the Ethereum will be received on the same address but on the Ethereum network, or a different address.

Click Next.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

10\. You now need to **confirm the transaction and submit it via Metamask.**

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

11\. **A transaction on the Binance Smart Chain network will be created**. You will spend BNB as gas for the transaction that happen on the Binance Smart Chain and 0.005 Ether (this amount could change and is up to Binance), as fee on the Ethereum network.

**You will then receive your ether on your Ethereum wallet and will be able to manage these funds within Edge**.

12\. For safety reason, **remember to cancel the note that contains your private key**!
