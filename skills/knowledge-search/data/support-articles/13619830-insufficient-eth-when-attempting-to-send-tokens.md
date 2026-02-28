---
title: "Insufficient\_ETH when attempting to send tokens"
intercom_id: '13619830'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220103
description: "Users will receive \"Insufficient ETH\" when attempting to send an ERC20 token when their balance is less than the required network fee.\_\nWh..."
url: >-
  https://help.edge.app/en/articles/13619830-insufficient-eth-when-attempting-to-send-tokens
---
Users will receive "Insufficient ETH" when attempting to send an ERC20 token when their balance is less than the required network fee.

When sending a token the fee must be paid for by the parent wallet and can not be paid by the token.

**To correct this, you will need to add ETH to the wallet that is giving the "Insufficient ETH" error.**

[**Buying ETH:**](https://support.edge.app/hc/en-us/articles/7092336683547)

To buy ETH simply tap on "Buy" located at the bottom navigation bar and then select the option that works best for you.

[**Receiving ETH:**](https://support.edge.app/hc/en-us/articles/7019419995931)

To receive ETH to the parent wallet you can copy the ETH address or Token address and then send the parent address funds. The receiving address can be found by tapping into the wallet and then tap "Receive."

[**Exchange to ETH:**](https://support.edge.app/hc/en-us/articles/7097636138267)

If you have another asset (not the token that is giving the error because a swap is still a send and will require the same fee) you can also exchange into ETH. Tap exchange located at the bottom navigation and follow the prompts. Example: You have BTC and can exchange into ETH to send your token.

**Some notes about why you may not have seen this before**

-   If you sent your token from an Exchange to Edge this error might be a bit alarming. Many custodial exchanges cover the network fees for users or include the fee in the send which hides it from the user.
    
-   If you recently split your wallet to recover a token sent to a wrong network, the wallet likely doesn't have ETH to pay fees. This typically is corrected by sending funds to that wallet from a wallet has an ETH balance.
