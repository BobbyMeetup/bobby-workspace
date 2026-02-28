---
title: How Edge Wallet handles incoming Replace-by-fee (RBF) transactions?
intercom_id: '13619834'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220110
description: >-
  When a transaction is received by Edge Wallet, this is almost immediately
  shown in the transactions history of the wallet, marked as Pendi...
url: >-
  https://help.edge.app/en/articles/13619834-how-edge-wallet-handles-incoming-replace-by-fee-rbf-transactions
---
When a transaction is received by Edge Wallet, this is almost immediately shown in the transactions history of the wallet, marked as Pending (in red) and the balance is updated.

This is true also for the so called RBF transactions.

# What is a Replace-by-fee (RBF) transaction?

Replace-by-fee is a Bitcoin node policy. There are many variants of this policy, however to simplify, we can say that a wallet that uses RBF allows an unconfirmed transaction to be replaced with another transaction that uses the same input as the previous with a higher mining fee.

Let's say a user sends a transaction using a wallet that supports RBF: they could send it using a very low fee, for example 2 sats/byte but they may later realize that the network is congested, so they could replace that transaction with a new one with the same amount but with a higher fee, for example 15 sats/byte. This way the transaction will be confirmed faster.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

*An example of RBF transaction, 2 sats/byte*

This policy could be use in theory to create a scam attack.

An attacker could send an amount in bitcoin using RBF and ask the receiver to send goods/other currencies in exchange.

After the exchange, the attacker could potentially "cancel" the unconfirmed transaction by diverting the same inputs to a transaction that pays an address they own.

After the confirmation, our wallet would remain without those funds and we would also have sent the goods/other currencies to the scammer.

This is a very uncommon scenario however you have two useful steps you can follow:

1.  **Never send goods/other currencies if a transaction has not yet been confirmed**.  
    When you receive a new transaction in Edge, you see that it is marked as "Pending". That means it has not been confirmed by the blockchain and you can monitor the confirmations by clicking on View advance transaction data --> Show in Block Explorer.  
    Here you will be able to check if your transaction is still in the mempool or has been confirmed and how many confirmations it has.
    
2.  **Use a type of transaction called [CPFP (Child Pays For Parent)](https://support.edge.app/hc/en-us/articles/7073321381019-How-do-I-get-my-pending-transaction-to-confirm-faster-)**, fully supported by Edge Wallet, so you can confirm the RBF transaction before the scammer.
    

When you receive a transaction, **Edge will show a warning till the transaction will have at least 1 confirmation.**  
This way you can clearly understand that the transaction is still pending and it can still be cancelled by the sender.
