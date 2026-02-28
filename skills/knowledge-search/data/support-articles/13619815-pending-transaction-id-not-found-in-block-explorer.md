---
title: Pending Transaction ID Not Found in Block Explorer
intercom_id: '13619815'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220077
description: |-
  Issue:


  Users may experience a prolonged "pending" status for outgoing transactions.
  Users may not find their transaction ID (TXID) when ...
url: >-
  https://help.edge.app/en/articles/13619815-pending-transaction-id-not-found-in-block-explorer
---
**Issue:**

-   Users may experience a prolonged "pending" status for outgoing transactions.
    
-   Users may not find their transaction ID (TXID) when searching on a block explorer.
    

**Explanation:**

-   A "pending" transaction indicates that the transaction is waiting for confirmation on the blockchain.
    
-   If a transaction remains pending for an extended period, it's possible the network dropped it.
    
-   When a transaction is dropped, it will not be found on a block explorer.
    

**Troubleshooting Steps:**

1.  **Check Transaction Status via Block Explorer:**
    
    -   In the Edge app, navigate to your transaction history.
        
    -   Tap on the pending transaction.
        
    -   Select "View advanced transaction data."
        
    -   Choose "Show in Block Explorer."
        
    -   **If the block explorer finds the transaction:**
        
        -   The transaction is still pending confirmation.
            
        -   Users should wait for further confirmation.
            
    -   **If the block explorer cannot find the transaction (e.g., 404 error, "transaction not found"):**
        
        -   The transaction has likely been dropped by the network.
            
2.  **Resync the Wallet:**
    
    -   To resolve a dropped transaction, perform a wallet resync.
        
    -   On the asset screen, locate the affected wallet.
        
    -   Tap and hold (or long-press) on the wallet.
        
    -   Select "Resync."
        
    -   This will cause the wallet to rescan the blockchain for transactions.
        
3.  **Accelerate the transaction:**
    
    1.  [Edge RBF - How to accelerate a transaction](https://support.edge.app/hc/en-us/articles/20865438122011)
