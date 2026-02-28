---
title: Understanding Wallet Migration vs. Importing in Edge
intercom_id: '13619660'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770219833
description: >-
  When you want to add an existing crypto wallet to your Edge account, you have
  two main options: Import Wallet and Migrate Wallet. Each met...
url: >-
  https://help.edge.app/en/articles/13619660-understanding-wallet-migration-vs-importing-in-edge
---
When you want to add an existing crypto wallet to your Edge account, you have two main options: **Import Wallet and Migrate Wallet**. Each method has its advantages and considerations, so let’s break them down to help you decide which is best for you.

# Import Wallet – Import existing seeds and create a clone

Importing a wallet means you **copy your existing wallet into Edge by importing the seed phrase / Private Key**, allowing you to access and transact with the same funds in multiple places. You can find the Import steps [here](https://support.edge.app/hc/en-us/articles/29303780826523-How-to-Import-a-wallet).

## Pros:

✅ More flexibility, as your funds remain accessible in both Edge and your original wallet.  
✅ No transaction fees for the import, since you're not moving funds on-chain.

## Cons:

❌ Security risk: If one wallet gets compromised, the other one is at risk too.  
❌ The imported wallet is a direct copy of the original, meaning transactions affect both.

# Migrate Wallet – Moving Your Funds Completely

Migrating your wallet means you are **transferring your funds from one wallet to another**. This is a clean way to move your assets fully into Edge Wallet. We see an example of this technique when you want to [sweep a private key from a paper wallet.](https://support.edge.app/hc/en-us/articles/7017901083035-How-do-I-sweep-my-Private-Key-into-Edge)

## Pros:

✅ Your funds will be available only in Edge Wallet and can no longer be managed from the previous app. This reduce security risks.  
✅ You get a brand new environment for your assets: a fresh start, with all transactions happening within Edge.

## Cons:

❌ You will need to pay a small transaction fee to the miners or validators for each network since this process requires an on-chain transfer.

## When to Choose Migration:

-   You want a **secure and dedicated** wallet experience in Edge.
    
-   You are okay with paying a network fee to move your assets.
    
-   You want to ensure no duplicate wallets exist elsewhere.
    

## When to Choose Importing:

-   You can no longer use your previous app to manage your crypto
    
-   You want access to the same funds across multiple wallets.
    
-   You don’t want to pay a transaction fee.
    
-   **You understand the security risks** and are comfortable managing multiple wallets.
    

# Private Keys and Seed Phrase: Risk Management

Whether you migrate or import your wallet, it’s crucial to understand how private keys and seed phrases work.

**When migrating a wallet**, your funds move to a **new wallet with a different seed phrase**, meaning your original seed phrase is no longer connected to the new wallet.

In contrast, importing your wallet **keeps the same private keys and seed phrase**, making both wallets function as mirrors of each other. This means that if your seed phrase is ever compromised, both wallets are at risk.

**After importing your seeds into Edge, the app proposes to use the Migrate feature, as we believe that's the best option, since it's the most secure.**

*Import seeds -> Create (clone) Wallet -> Do you want to Migrate to a brand new wallet?*

# What If Some Assets Aren’t Available for Import/Migration?

**Not all assets may be imported when you enter your seed phrase**, and there are two main reasons:

1\. Edge may not support the coins you are trying to import yet.

Edge is open source and projects are welcome to create a plugin and submit a pull request themselves.  
If you're part of the development team you can get more information at [info@edge.app.](mailto:info@edge.app)

2\. You are trying to import a token instead of a coin using the seeds you got from another app. Edge does not provide the ability to do so directly, but this can be easily addressed.

**To import a token:**

-   **First, create a mainnet wallet by importing the seeds**. Edge supports multiple networks, so you must ensure you select the correct mainnet coin for the network you are importing from. For instance, if you are trying to import a USDT wallet under Ethereum network, you will need to select Ethereum as mainnet wallet. If you want to import a USDT wallet under Polygon, you need to choose Polygon as mainnet wallet, and so on.
    
-   **The app will then automatically scan for tokens** assigned to that mainnet wallet and create the token wallets, if available in the default token list of that specific network.
    

## Importing Custom Tokens

If you followed the steps above, but you still don't find your token wallet, it is possible that it's not in the default token list. No worries!  
You can add tokens even if not available in the default token list.  
Just follow the steps you find in our [How do I add Custom Tokens?](https://support.edge.app/hc/en-us/articles/7013684611355-How-do-I-add-Custom-Tokens) to manually add the token.

# Which Option is Best for You?

If you prioritize **security and exclusivity**, migrating is the better choice, even if you start by importing your existing seeds into Edge. But if you need **flexibility and multi-wallet access**, just importing could be useful. If you opt for the latter, and you had the seeds written down to help yourself with the steps, remember to destroy the note!
