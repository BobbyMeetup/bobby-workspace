---
title: Why do I need ETH to send Ethereum tokens?
intercom_id: '13619814'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220076
description: >-
  Ethereum is a smart contracts platform on which developers can create not only
  tokens but entire ecosystems like Dapps (decentralized appl...
url: >-
  https://help.edge.app/en/articles/13619814-why-do-i-need-eth-to-send-ethereum-tokens
---
Ethereum is a smart contracts platform on which developers can create not only tokens but entire ecosystems like Dapps (decentralized applications) and Defi projects (Decentralized Finance).

Every token on Ethereum is not only a representative coin, for example Colored Coins on Bitcoin, but a complex smart contract that needs the user to pay some fractions of Ethereum (ETH) called Gas.  
As read in our article [ETH Fees, Gas, & The Halting Problem](https://edge.app/blog/ethereum-fees-gas-and-the-halting-problem/?af=google-com), "*in* *Ethereum, “Gas” is a computational unit or a measure of the number of resources needed to execute a smart contract on the Ethereum Virtual Machine (EVM).*  
*Some smart contracts require the EVM to use more resources to execute than others.*  
*Because of this variation, some transactions and programs need to pay more or less in fees than others.*  
*The less resources (computation, storage) your program requires to execute, the less ETH you’ll need to pay the miners.*"

We can then understand that, **in order to send USDT and other ERC20 tokens (Ethereum tokens), you need some fractions of Ethereum to pay Gas (mining fees)**.  
This Ethereum network policy applies not only to Edge Wallet but to every wallet able to manage Ethereum tokens.  
  
Please note that this policy applies to exchanges, **if you want to exchange an ERC20 token to another coin (for example USDT to ETH), you need some ETH to cover the mining fees, because the exchange needs an Ethereum transaction**.

Less than $10 USD worth of Ethereum is usually sufficient to cover a lot of USDT (or other tokens) transactions, because, if the network is not congested, you pay the equivalent of 1 to 10 cents per transaction, or even less.

However, when the network is almost completely saturated, the fees can be abnormally high and exceed $10 in ETH depending on the complexity of the smart contract involved in the transaction.

Even if you set the fees to Low within Edge Wallet, it may be still calculating a high fee that is considered low relative to the network.

# How to change the fees and set a custom fee

You can change the network fees by clicking the 3 vertical dots upper right in the Slide to confirm screen, click High and go back. If it says insufficient funds, try again, select Custom and enter **Gas limit and gas price**.

For reference, fees for token transfers can have a limit of 200,000 and an amount of GWEI to be set according to [https://ethgasstation.info/](https://ethgasstation.info/). If you enter a custom amount lower than that the transaction will get stuck or drop.  
So, for example, you could need a Limit of 200,000 and a GWEI value of 50, if this is the Standard value you see on EthGasStation.

Fees for ETH transfers usually have a limit of 21,000 but a limit up to 80,000 can be necessary. GWEI value have to be set according to [https://ethgasstation.info/](https://ethgasstation.info/)

So, for example, you could need a Limit of 80,000 and a GWEI value of 50, if this is the Standard value you see on EthGasStation.

**Recap**

So, you need to pay gas for every transaction on the Ethereum network.  
This is true for simple transactions (Ethereum to Ethereum address), but also for exchange (for example Ethereum to Bitcoin) and especially for token transfers, that, as we saw above, are complex smart contracts.

The more smart contracts involved in an Ethereum transaction (for example Cdai -> Dai -> Eth), the more gas you pay, and this raises the price for normal transactions too, congesting the network.  
  
​

*If your wallet is empty, Edge could require you to buy ETH. If you have Ethereum in another wallet, you can skip this request by pressing "Not at this time" and transfer ETH to the same address in which you have tokens.*

For the moment, the only thing you can do is to wait for the transactions to be confirmed or wait until the network congestion stops, however this may be unlikely given the Ethereum network continues to be used for Defi applications, unless [Ethereum 2.0 will solve the scalability issue](https://edge.app/blog/ethereum-development-update-eth-2-0/?af=google-com).
