---
title: >-
  How do I get my pending transaction to confirm faster using CPFP or Child Pays
  for Parent?
intercom_id: '13619761'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770219995
description: >-
  If a transaction is showing as Pending on the bitcoin network and you would
  like to attempt to get the transaction confirmed quicker you m...
url: >-
  https://help.edge.app/en/articles/13619761-how-do-i-get-my-pending-transaction-to-confirm-faster-using-cpfp-or-child-pays-for-parent
---
If a transaction is showing as Pending on the bitcoin network and you would like to attempt to get the transaction confirmed quicker you may be able to complete a CPFP (Child Pays For Parent) transaction. A CPFP transaction is a high-fee transaction you send to yourself containing an output from the pending transaction and a higher mining fee.

This incentivizes the network to confirm your first transaction because the second, high-fee transaction, relies on it. This isn't guaranteed to get your transaction confirmed immediately but it does increase the chance of it getting mined sooner. Note: these steps will not help if your first transaction was a Max Send since there aren't any available outputs to spend.

The description may sound complex but it's very easy to do:

1) Copy the receiving address from the same wallet you sent the original transaction from (open the wallet, Receive, copy the address)

2) Go back and click on Send: paste the address here

3) Tap on the fee field and Change Mining Fee and set to High

4) Tap on the amount to send and tap on Max

5) Then slide to confirm.

Note, you **do not need** to follow these steps to get your original transaction confirmed. Most low-fee transactions remain valid for days and will eventually confirm. **CPFP transactions are only intended to help** **you get the original transaction confirmed** **sooner** by incentivizing the network with higher fees than the first transaction offered.

Please be aware that this may cost quite a lot in mining fees as it will spend your entire wallet balance back to yourself. Before sending this transaction, please take note of the mining fee included and be sure that you are comfortable sending this transaction with the given fee.

Lastly, we are not responsible if the higher transaction fee receives delayed confirmations, so please proceed at your own risk.
