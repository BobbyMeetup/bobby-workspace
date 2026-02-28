---
title: Bitcoin's UTXO Model and Its Impact on Transaction Fees
intercom_id: '13619807'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220066
description: >-
  Bitcoin operates on a model known as the Unspent Transaction Output (UTXO)
  system.

  In this article, we'll delve into the UTXO model, highl...
url: >-
  https://help.edge.app/en/articles/13619807-bitcoin-s-utxo-model-and-its-impact-on-transaction-fees
---
Bitcoin operates on a model known as the Unspent Transaction Output (UTXO) system.

In this article, we'll delve into the UTXO model, highlight its key differences from account-based currencies like Ethereum, and discuss how it can impact transaction fees on the Bitcoin network.

# Bitcoin is a UTXO-type Currency

At its core, Bitcoin uses a UTXO model to manage its transactions. Think of it like having a wallet full of paper cash. Each UTXO is akin to a different denomination of paper currency in your wallet. To illustrate, imagine you have a wallet with a total value of 1 BTC, which is equivalent to having a wallet filled with various paper bills and coins:

-   0.2 BTC UTXO
    
-   0.3 BTC UTXO
    
-   0.03 BTC UTXO
    
-   0.22 BTC UTXO
    
-   0.25 BTC UTXO
    

To make a transaction in the UTXO model, you would select a combination of these "paper bills" (UTXOs) to cover the desired transaction amount. For instance, if you wanted to buy a product worth 0.5 BTC, your wallet might use the 0.3 BTC UTXO and rhe 0.2 BTC UTXO to create a transaction totaling 0.5 BTC.

# The Main Differences Between UTXO and Account-based Currencies

Now, let's briefly contrast the UTXO model with account-based currencies like Ethereum:

\- **UTXO (Bitcoin)**: In the UTXO model, users do not have account balances. Instead, they possess a collection of UTXOs with varying amounts. To make a transaction, they select a combination of UTXOs whose total value covers the desired transaction amount.  
UTXOs can be under the same address or different ones: Bitcoin wallets in Edge are Hierarchical Deterministic (HD) wallets, so every time you receive a transaction, a new address is generated to maximize your privacy, but you can always reuse the old addresses and get more UTXOs over them.

\- **Account-based (Ethereum)**: Ethereum, on the other hand, employs a balance-based system where users have account balances associated with their addresses. When they want to send funds, they simply deduct the desired amount from their account balance. Account-based currencies have just one address, so you are forced to reuse it if you want to receive funds to the same wallet.

# Impact of UTXOs on Transaction Fees - A Real Example

Now, let's explore why Bitcoin users might incur higher fees when attempting to spend multiple UTXOs during network congestion. Consider this real-world example:

A user sent this transaction: [https://mempool.space/tx/afffbea0b3e973cf1cabd7dc8633201b90c2751ca4295ee2cecb660994d6f971](https://mempool.space/tx/afffbea0b3e973cf1cabd7dc8633201b90c2751ca4295ee2cecb660994d6f971)

In this transaction, the user used 34 UTXOs with very small amounts of BTC each. The largest UTXO had a value of 0.00041620 BTC. Despite setting a fee rate close to the average at that time (30.3 satoshis per virtual byte), the user spent a substantial 153,690 satoshis, equivalent to $40.28 in total fees. The receiving address received only 0.00294957 BTC.

This example highlights how the accumulation of multiple small UTXOs can result in significantly higher transaction fees, even when using an average fee rate. Users should be aware of this when managing their Bitcoin holdings, especially during periods of network congestion.

# UTXO Consolidation and Privacy Risks

To mitigate high transaction fees associated with multiple UTXOs, users can consider UTXO consolidation. This process involves creating a single transaction that combines multiple small UTXOs into one larger UTXO spent to themselves. This can be cost-effective when the average fee is low, let's say below 5 satoshi per virtual byte.

**To do UTXO consolidation**:

1\. Open your Bitcoin wallet  
2\. Tap Receive  
3\. Copy the address  
4\. Go back and tap Send  
5\. Past the address  
6\. In Amount, choose Max  
7\. Slide to confirm

However, **there are privacy risks to be aware of when consolidating UTXOs.** When users merge UTXOs, they can inadvertently link previously unconnected transactions, potentially compromising privacy. To avoid this, users should exercise caution.

In conclusion, Bitcoin's UTXO model offers a unique way of handling transactions, much like managing a wallet filled with different denominations of paper cash. It can result in higher fees for users with many UTXOs during network congestion. UTXO consolidation can be a cost-effective solution when fees are low, but privacy-conscious users should take care to maintain their anonymity. Monitoring platforms like [https://mempool.space](https://mempool.space) can help users make informed decisions about when to consolidate their UTXOs and when to prioritize their privacy.
