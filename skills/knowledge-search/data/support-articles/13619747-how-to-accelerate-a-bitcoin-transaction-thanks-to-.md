---
title: How to accelerate a Bitcoin transaction thanks to RBF
intercom_id: '13619747'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770219972
description: >-
  Bitcoin has evolved over the years to address various challenges and improve
  its functionality. One such improvement is the introduction o...
url: >-
  https://help.edge.app/en/articles/13619747-how-to-accelerate-a-bitcoin-transaction-thanks-to-rbf
---
Bitcoin has evolved over the years to address various challenges and improve its functionality. One such improvement is the introduction of Replace-By-Fee (RBF). RBF is a feature that allows Bitcoin users to replace an unconfirmed transaction with a new one, typically with a higher fee. In this article, we'll take a closer look at what RBF is and how it works and how is implemented in Edge Wallet.

# What is Replace-By-Fee (RBF)?

Replace-By-Fee, or RBF for short, is a mechanism that allows Bitcoin users to make changes to a pending transaction. These changes can include increasing the transaction fee or altering the destination address. The primary purpose of RBF is to give users more control and flexibility over their Bitcoin transactions, especially when the network is congested.

Bitcoin transactions rely on miners to be included in the blockchain. Miners prioritize transactions based on the fees attached to them, with higher fees getting picked first. However, sometimes a Bitcoin user may accidentally set a lower fee or want to speed up a transaction's confirmation if the network suddenly becomes congested. This is where RBF comes to the rescue. It enables users to bump up the fee to make sure their transaction gets processed promptly.

Here's how it works in a few simple steps:

1\. **Create an Initial Transaction:** You begin by creating and broadcasting your Bitcoin transaction to the network as you normally would, but usually you have to specify that this is a Bitcoin transaction with RBF active. This transaction may have a low fee, which means it might take a longer time to get confirmed.

2\. **Create a Replacement Transaction**: If you wish to speed up the confirmation, you can create a new version of the transaction with a higher fee. This replacement transaction will include the same inputs and outputs as the original one but with an increased fee.

3\. **Broadcast the Replacement Transaction**: Once the replacement transaction is ready, you broadcast it to the Bitcoin network. Miners will prioritize this new transaction over the old one due to the higher fee, increasing the chances of quicker confirmation.

4\. **Miners Confirm the Transaction**: Miners include the replacement transaction in the next block they mine, which confirms the transaction. The original transaction becomes invalid as it was replaced by the new one.

# How RBF works in Edge Wallet

Let's start with saying that all the transactions in Edge come with RBF active!  
We opted for a super easy user interface, so our users don't have to deal with complex terminology and settings.

After you send a Bitcoin transaction and you want to increase the fees, you simply need to open the pending transaction, scroll down and tap **Accelerate this transaction**.

You will see the current fee and the new one, and you will be asked to slide to confirm.  
Edge will then send a new transaction that spends the same amount to the destination address, but with higher fees.

**Note:** since a new transaction with higher fees will be created, the previous transaction will be dropped by the network once the new is confirmed.

Replace-By-Fee (RBF) is a valuable feature that empowers users to have more control over their pending transactions. It allows for the adjustment of fees and other transaction details, providing a solution when transactions are stuck in the network due to low fees or other issues. RBF is a simple but effective tool that adds versatility to the Bitcoin ecosystem, ensuring that users can navigate the dynamic nature of the network with ease.
