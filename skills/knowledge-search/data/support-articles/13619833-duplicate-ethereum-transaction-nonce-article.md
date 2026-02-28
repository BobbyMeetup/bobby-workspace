---
title: Duplicate Ethereum Transaction Nonce article
intercom_id: '13619833'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220109
description: >-
  Ethereum was designed so that each transaction requires a sequential nonce.
  This is how Ethereum keeps transactions orderly without using ...
url: >-
  https://help.edge.app/en/articles/13619833-duplicate-ethereum-transaction-nonce-article
---
Ethereum was designed so that each transaction requires a sequential nonce. This is how Ethereum keeps transactions orderly without using a UTXO set, like Bitcoin. This introduces a unique race condition for Ethereum transactions: a failed transaction may be confirmed long after it was created.

Imagine this scenario: you have successfully sent a number of transactions from your ETH wallet each with it's own unique nonce that increases by one. The first transaction has nonce 0, the second had nonce 1, etc. Later, you attempt to send two transactions close together: the first of the two has nonce 6 and the next one has nonce 7. What happens if the first transaction (nonce 6) fails and does not get confirmed? ETH transactions could fail if they don't have enough gas to complete or if the broadcasting API fails to share it with the network. That means the transaction with nonce 7 is not valid (yet) and therefore won't confirm.

The next time you open and sync your wallet it will be determined that the most recent confirmed TX has nonce 5, so the next transaction generated will have a nonce of 6. You create a TX with nonce 6 and this time it confirms, and then out of nowhere you see that a second transaction has also spent funds from your wallet. What's happening?

The initial TX with nonce 7 was successfully broadcast to the network and the nodes held onto it in their mempools. Even though it wasn't valid earlier, now that the blockchain has confirmed a new TX with nonce 6 this old one with nonce 7 is now valid and also gets confirmed. From the users perspective, it appears to be a transaction sent from their wallet out of nowhere, when in fact it was a previous transaction they sent that was finally valid and therefore confirmed.

This race condition exists because network nodes are holding onto TXs that aren't valid but could be valid later. That means we can't code away this behavior since we can't influence how nodes manage their mempools. This is not an issue unique to Edge but can affect any light wallet.
