---
title: 'BNB Beacon Chain Sunsetted: Asset Recovery Steps'
intercom_id: '13619849'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220133
description: >-
  The BNB Beacon Chain was deprecated by Binance in an effort to consolidate
  their brand into one chain, the BNB Smart Chain. The migration ...
url: >-
  https://help.edge.app/en/articles/13619849-bnb-beacon-chain-sunsetted-asset-recovery-steps
---
The BNB Beacon Chain was deprecated by Binance in an effort to consolidate their brand into one chain, the BNB Smart Chain. The migration period, called [*BNB Chain Fusion*](https://www.bnbchain.org/en/bnb-chain-fusion), was completed in 2024, and now no more transactions are processing, as the beacon chain is completely turned off. If you have a BNB beacon chain wallet in Edge, you will see it's dimmed with text showing 'Wallet Disabled'.

Fortunately, you may still be able to use Binance’s [*Token Recovery dApp*](https://docs.bnbchain.org/bc-fusion/post-fusion/token-recovery/) to migrate any frozen BNB assets on the beacon chain onto BNB Smart Chain. This official guide is worth a read, but you may also want to use the steps below for specifically dealing with any disabled BNB wallet in Edge.

Take it step-by-step, and you’ll find the process is pretty straight forward. Binance made this migration tool very easy to use; however, the process cannot be completed from a mobile device alone. The first 3-steps can be completed from your phone with a piece of paper, and the final 2-steps will require:

-   A laptop or desktop computer
    
-   Chrome (or any Chromium based) web browser
    
-   The Trust wallet browser extension (linked below)
    

Here are the steps:

1.  **Extract the Master Private Key for your BNB wallet**
    
    1.  Log into Edge, navigate to Assets and locate the BNB wallet
        
    2.  Long-press on it, or tap into it and use the (⋮) vertical dots, to launch this asset’s menu
        
    3.  Select View Master Private Key and enter your password
        
    4.  Write these 24 words down carefully. Keep them very safe.  
        *(No one should ever know this information but you!)*
        
2.  **Create a new BNB (Smart Chain) wallet with the same seed phrase**
    
    1.  Go back to the top of your Assets page, and tap on the light green ‘+’ button
        
    2.  Search for BNB, select BNB (Smart Chain), and tap Next
        
    3.  Here, you may rename the wallet if desired, then proceed to ‘Import Wallet’
        
    4.  Carefully type in the same Master Private Key from your BNB beacon chain wallet
        
3.  **Fund the new BNB Smart Chain wallet with at least $1 worth of BNB**
    
    1.  Needed to broadcast claim of wallet ownership on BSC in the final step
        
    2.  To accomplish this, you could receive some BNB into your new *0x…* address from another source, or Buy a small amount from any of our integrated on-ramps, or Exchange into some BNB from another crypto that’s already in your account
        
4.  **On a computer, install the Trust extension and import your BNB wallet**
    
    1.  Navigate to: [*Trust Wallet - Chrome Web Store*](https://chromewebstore.google.com/detail/trust-wallet/egjidjbpglichdcondbcbdnbeeppgdph)
        
    2.  Install the extension and click the green ‘*I already have a wallet*’ button
        
    3.  Carefully input your 24 seed words again
        
        1.  *You will only need temporary access to your wallet within this extension, so you may delete/uninstall it after the last step of this guide, and your BNB will also automatically appear in Edge because of step 2 in this procedure*
            
5.  **Interact with the** [***BNB Beacon Chain Token Recovery Tool***](https://www.bnbchain.org/en/token-recovery)
    
    1.  Navigate to this dApp and click on Connect Wallet > Trust Wallet
        
    2.  Follow through the steps to connect wallet with beacon chain address, and then switch network to broadcast claim of wallet ownership on BSC
        
        1.  *Verify that you are claiming assets to the same 0x… address that you created in step 2 within your Edge account (same seed = same address)*
            
    3.  Wait 7-days for their manual review process. And you’re done!
        

**New BNB on the Smart Chain will be** ***automatically*** **airdropped into your wallet! 🥳**

Wrap-up:  
You may safely uninstall the extension at this point to remove your seed words from your browser. If you are concerned at all about seed exposure, then once funds are received, you may consider migrating them into another fresh BNB wallet within your Edge account. Any new wallet you create in your Edge account will have a new, unexposed 24-word seed phrase, so to maximize security going forward, you can take these additional steps -- add a BNB wallet '+', go into the funded BNB wallet, tap Send, tap Myself, tap your newest BNB wallet, tap Enter Value, tap MAX, Slide to Confirm. Done. You can now go back, and remove any old or unused BNB wallets from your list by holding down on them to quickly launch the asset menu and find the yellow option to Archive Wallet.
