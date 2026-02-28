---
title: 'My BSV didn''t appear when I split, how do I recover my BSV?'
intercom_id: '13619836'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220112
description: >-
  The BSV split function creates a copy of your BCH wallet and connects it to
  the BSV network. Only BSV that was successfully replayed from ...
url: >-
  https://help.edge.app/en/articles/13619836-my-bsv-didn-t-appear-when-i-split-how-do-i-recover-my-bsv
---
The BSV split function creates a copy of your BCH wallet and connects it to the BSV network. Only BSV that was successfully replayed from the sending wallet will appear in this new wallet in Edge. That means, if the BCH transaction to Edge was not valid on the BSV chain then those BSV will not be sent to Edge and not appear when you split. Here is the most common scenario that prevents BSV from showing up in Edge:

*The BCH in your sending wallet was tainted with replay-protected BCH:* Did you receive BCH after the date of the fork (15 November 2018)? It's possible that this BCH was already replay-protected meaning the BSV did not move at the same time to your wallet. That means the BCH and BSV balance in your wallet do not match. Attempting to send all of your BCH to Edge to split will result in some or none of the BSV appearing.

This can happen without you even knowing it! Let's say you send a small amount of BCH to your Edge wallet. After it appears, you follow up with the remaining BCH from your other wallet. After using the split function you find that only the first small amount of BSV appears in Edge.

What happened? It's likely that the *change* address created in your first transaction was spammed with a small, dust amount of BCH. Spam transactions are very cheap on the BCH chain and you can't prevent someone from sending your addresses dust amounts. The spammers are watching new transactions and spamming addresses that are used for the first time, like change addresses. Here's an example:

[https://blockchair.com/bitcoin-cash/transaction/9944920ce2ecb5e8a56a3b7a037ca5d29d457515b9c046400b7b4feea773de44](https://blockchair.com/bitcoin-cash/transaction/9944920ce2ecb5e8a56a3b7a037ca5d29d457515b9c046400b7b4feea773de44)

After qrwudd96ezswdqjery2nkfyted4u5fmyhvac5ktmnu was first seen on the blockchain it was sent a dust amount by qpwr6ujj04qxurf0h92s0xc4smphlvxdssvzfdfhsr. This transaction include an OP\_RETURN output with a casino advertisement.

This dust input doesn't exist on the BSV chain so when you attempt to send your remaining balance to Edge the transaction can't get replayed, therefore the BSV doesn't move out of your wallet to Edge.

**How to recover your BSV if it doesn't appear in Edge**

*If you sent BCH to Edge from a hardware wallet (Trezor, Ledger Nano S, etc) -* Download and install [https://electrumsv.io/](https://electrumsv.io/) onto a computer. Connect your hardware device and send the BSV to Edge. Then, run the split tool. Now your funds on both chains are replay-protected and you can move BCH or BSV without risking the other coin.

*If your BCH was sent from another mobile or desktop wallet -* You'll need to take the private seed and enter it into [https://electrumsv.io/](https://electrumsv.io/) to send to Edge. Once you have sent the BSV you should **never** use this seed again. This is **not** a good solution if your wallet uses the same master private seed for all currencies (like Coinomi). If your other wallet uses a master private seed, you'll need to request that they enable BSV support.
