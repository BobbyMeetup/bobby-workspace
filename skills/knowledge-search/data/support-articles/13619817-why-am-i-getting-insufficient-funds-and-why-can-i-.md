---
title: Why am I getting insufficient funds and why can I not send?
intercom_id: '13619817'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220081
description: "There are a couple of different reasons you might be seeing an insufficient funds error\_when attempting to send or exchange.\n\n\n\_\nInsuffici..."
url: >-
  https://help.edge.app/en/articles/13619817-why-am-i-getting-insufficient-funds-and-why-can-i-not-send
---
There are a couple of different reasons you might be seeing an **insufficient funds error** when attempting to send or exchange.

**Insufficient ETH**

Are running into a send error in regards to seeing an **insufficient ETH error** when trying to send either ETH or an ERC-20 Token?

In order to send any ETH based tokens such as USDT, DAI, USDC etc. you need to have some ETH to cover the fee. These are considered ERC-20 tokens and are a part of the ETH network and require ETH or you will not be able to send or trade it anywhere. Edge makes 0 profit from those fees and instead goes to the ETH network to process your transaction.

If you are not sure, a list of ETH tokens can be seen here: [https://etherscan.io/tokens](https://etherscan.io/tokens)

Transaction fees for sending ETH or ERC-20 tokens vary greatly and can be as low as $1 and even $100 or higher depending on the traffic on the network and complexity of the transaction. You can take a look at what the average fees are here: [https://www.gasnow.org/](https://www.gasnow.org/)

We recommend purchasing about $20-$50 of ETH as that should be enough to cover most basic transactions during normal traffic and also gives you enough to do a few transactions. However these recommended amounts can change drastically depending on the congestion on the network as noted earlier.

Remember, that if you are trying to send an ERC-20 token you will be required to have some ETH in order to covert the fee to get the transaction processed. Without any ETH you cannot send the funds out at all.

NOTE: This is true of all EVM chains such as AVAX, Matic, BNB Smartchain.

**Sending the Max Amount**

Are you attempting to send the max amount in your wallet, and still getting an insufficient funds error?

**No need to manually enter that amount.**

Once you have tapped on the amount field and are ready to enter the figure you intend to send you can simply tap **'Send Max Amount'** in the right corner of the amount pop up modal.

This will automatically subtract the network fees for the transaction and send the highest possible amount in your wallet after that network fee is deducted.

Edge does not make any money from these fees, as 100% of the fee goes to the respective network to pay for confirmations.

In some cases, the network fees may exceed the amount of money in your wallet. This can happen when your wallet contains a large number of very small transactions.

**Special cases:**

**XRP/Ripple:**

You may receive this message when attempting to send all of your XRP. Every XRP address must keep a 10 XRP reserve balance. This rule is not unique to Edge it is an XRP network rule.

**XMR/Monero**:

You may receive this error when attempting to spend incoming funds before they have 10 confirmations, or about 20-30 minutes. If an incoming transaction has less than 10 confirmations you'll see it's progress in your XMR wallet.
