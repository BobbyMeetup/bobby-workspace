---
title: What is a Wallet Birthday Height?
intercom_id: '13619753'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770219982
description: >-
  If you are an Edge user you might be familiar with the process of syncing your
  wallets. Wallet syncing ensures that your wallet has the mo...
url: 'https://help.edge.app/en/articles/13619753-what-is-a-wallet-birthday-height'
---
If you are an Edge user you might be familiar with the process of syncing your wallets. Wallet syncing ensures that your wallet has the most up-to-date transaction history and balance information. However, this syncing process can sometimes be time-consuming, especially when using privacy coins such as Zcash and Pirate Chain.

Zcash has come up with a clever solution to speed up the wallet sync process and this has been used also by Pirate Chain. It's called "Wallet Birthday Height," and it's worth exploring.

So, what exactly is Wallet Birthday Height? In simple terms, it's the block height at which your wallet was created or imported. Block height refers to the number of blocks that have been added to the blockchain since its inception. Each block contains a list of transactions, and the block height keeps track of the order in which they are added.

Now, you might be wondering, why does the Wallet Birthday Height matter when importing seeds? Well, when you import a seed into a Zcash or a Pirate Chain wallet, the wallet needs to scan through the entire blockchain to find all the transactions associated with that seed. This can be a time-consuming process, especially if the blockchain is large.

Here's where Wallet Birthday Height comes to the rescue. By specifying the Wallet Birthday Height during the seed import process, you're essentially telling the wallet to start scanning the blockchain from that particular block height, skipping all the previous blocks. This dramatically reduces the time it takes to sync your wallet since it doesn't have to process the entire blockchain history.

Let's say your first ZEC transaction happened in block 1,230,000. When importing your seed, you can specify this block height in the Wallet Birthday Height field, and the wallet will only scan the blocks that come after it. This is like fast-forwarding to the most recent transactions without having to go through the entire history.

It's important to note that the Wallet Birthday Height should be accurate to ensure you don't miss any transactions associated with your seed. If you specify a block height that's too recent, you'll miss some of your recent transactions, while specifying a block height that's too old would result in scanning irrelevant blocks, causing the initial sync-time to be longer than necessary.

# How to check the correct Wallet Birthday Height to enter?

The steps are pretty easy, all you need to have is the transaction ID / Hash of the first transaction you received in your Zcash / Pirate Chain wallet.  
Once you have the ID / Hash, you can paste it into an explorer and check the block height.  
For Zcash you can use [https://blockchair.com/zcash,](https://blockchair.com/zcash,) while for Pirate Chain you can use [https://explorer.pirate.black/.](https://explorer.pirate.black/)

An example:  
Let's say I received my first ZEC with the transaction ID / Hash 0d07b719a29d25ed79199d831cbd5dd69b501ce358b7fb754d92754a86943133

I copy this Hash and paste it in Blockchair explorer. I will get this result [https://blockchair.com/zcash/transaction/0d07b719a29d25ed79199d831cbd5dd69b501ce358b7fb754d92754a86943133](https://blockchair.com/zcash/transaction/0d07b719a29d25ed79199d831cbd5dd69b501ce358b7fb754d92754a86943133)  
Now, if you look below "Confirmed" you will see "Block id 1,899,999".  
That's the block height I'm looking for.

  
When importing the Zcash wallet into Edge, I can enter 1899999 in Wallet Birthday Height, this way the app will start syncing the Zcash wallet exactly from the block that contains my transaction.

So the next time you import your seed into a Zcash or a Pirate Chain wallet, remember to make use of the Wallet Birthday Height feature and enjoy a faster syncing experience.
