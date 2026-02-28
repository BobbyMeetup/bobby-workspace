---
title: What are Bitcoin Mining Fees and Dust? (Airbitz)
intercom_id: '13620005'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220443
description: "What are Bitcoin Mining Fees and Dust?\n\nIntroduction\n\_\nJust a few years ago, transaction fees were only a few pennies and could easily be ..."
url: >-
  https://help.edge.app/en/articles/13620005-what-are-bitcoin-mining-fees-and-dust-airbitz
---
**What are Bitcoin Mining Fees and Dust?**

**Introduction**

Just a few years ago, transaction fees were only a few pennies and could easily be confirmed in under an hour. In fact, the total transactions in a single day were less than 100,000 in 2014 when Airbitz(now Edge) had just started. Today we are seeing as high as 350,000 transactions and an average of 250,000 or so transactions per day. Because of the growing demand for bitcoin, the fees have gone up dramatically since then and have sometimes reached a cost as high as $3 for a single input during peak times, which can last a day or even a period of weeks. Since that recent spike, the transaction volume has cooled down quite a bit and we are seeing fees starting to come down again.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

[https://ycharts.com/indicators/bitcoin\_transactions\_per\_day](https://ycharts.com/indicators/bitcoin_transactions_per_day)

Should we see higher fees again, some address balances may no longer be spendable because the amounts that are left are now too small to cover the fees to be sent out. This is known as dust. This guide will explore mining fees and show how users can adjust the fees in their favor and allow users to send out the remaining dust in their wallet by using a custom fee below the recommended amounts at the right time.

**Mining Fees**

Mining fees are a necessary fee that is paid to the bitcoin network, specifically the miners that secure and validate the transactions that go through. Airbitz doesn’t make any profit from these fees and 100% of the fees go to the bitcoin network so that your transaction can be processed in a reasonable time. The fees that are calculated and used are the recommended fees according to [bitcoinfees.21.co/](https://bitcoinfees.21.co/).

In our 2.4.5 update, Airbitz users will now be able to view any dropped transactions that occur and will also have more freedom by being able to set their own fees. Users can manually enter the fees below or higher than the recommended amounts. To do this, just tap on the mining fee in the “swipe to confirm” screen.

If the fees are set too low, the transaction may take multiple hours and even days for it to confirm. In some cases, the transactions can drop from the mempool meaning that the transaction will not go through and be returned to the sender. In the event that a dropped transaction occurs and the user was the one sending, the user would have to re-send that payment again using higher fees for it to go through. If the user was receiving the money, the user will need to have the sender re-send the money. However, depending on network traffic, bitcoin transactions may even confirm with a zero fees paid to the network.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

Dropped transactions are now recorded.

Dropped transactions that occur whether it is a send or receive will now be tagged as dropped and be recorded in the Transaction History screen as part of the update. This new important feature will prove to be useful as users now have a record on whether a send or receive was dropped and can use that as a reference should there be a dispute.

Users should try to time the transaction during non-peak hours so that the likelihood of that transaction will confirm. For example, users can do this by first checking [statoshi.info/](http://statoshi.info/) to get an estimate how much traffic there is on the network at that moment in time and users can also check the recommended fees at [bitcoinfees.21.co/](https://bitcoinfees.21.co/). Next, they can use that data and attempt to try a send using a slightly lower fee than what is recommended. If the traffic is light and the fees have been adjusted to be lower, but not too low that it gets dropped, then the transaction might just go through.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

[statoshi.info/](http://statoshi.info/)

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

[bitcoinfees.21.co/](https://bitcoinfees.21.co/)

Users will also find this beneficial in that they can make payments using a lower fee if they do not need to have that transaction confirmed or processed quickly. If the user doesn’t mind doing a transfer or a payment that could take several hours or even a day to confirm, then the user can go ahead and set the fees to low or enter a custom amount to save on fees.

A user who has needs to have a transaction processed quickly can also take advantage of the custom fees implemented in Airbitz. Users can set fees higher than the recommended amount to try to get that transaction processed in the next block.

Lastly, in our 2.4.5 update, users will also be notified of any dust that might be left over when doing a “Max” send as seen in the image below.

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

Small dust inputs warning during a send

**Dust**

Dust is bitcoin on an address that cannot be spent because the fees are higher than what is on the address, meaning it would cost more money than what the bitcoin address currently has to move it. This is why sometimes when you do a Max send out of your wallet, you will still have some change left over. This is because the remaining balance left over is composed of many inputs that make up that total balance but each having too little of a balance to cover the mining fee.

Inputs are the outputs from a previous transaction. Typically when a new transaction is made, it consists of multiple inputs from a transaction that took place before that.

Nearly all bitcoin transactions have to send “change” back into your wallet which would be a new address right after you spend money. For example, when you receive 0.005 bitcoins then spend 0.004 bitcoins, there is of 0.001 bitcoins that returns to another new address of yours as change. You may also notice that your address changes after every receive since it is an [HD (Hierarchical Deterministic) wallet](https://airbitz.co/go/faq/why-does-my-airbitz-receiving-address-change/).

**Consider this example 1: Bob has 0.005 bitcoins and spends 0.004 bitcoins at a store.**

Address A has 0.005 Bitcoins and is sent to Address B and Address C below:

— -> 0.004 BTC into Address B (Website or a store)

— -> 0.001 BTC into Address C (Back into Bob’s account)

-   Address A now has a 0 balance (Bob’s Account)
    
-   Address B now has a 0.004 BTC balance (the business it was spent at)
    
-   Address C now has 0.001 BTC(Bob’s account) but that amount is too small to send for another transaction if fees are greater than 0.001 BTC
    

Now when Bob tries to spend the 0.001 BTC that came back as change, it might not be enough to cover the fees depending on the traffic of the network. Based on June 15’s price, the 0.001 bitcoins comes out to $2.40 and the bitcoin fees can sometimes reach up to $3 depending on bitcoin network congestion as mentioned. Combine the fees and also the item you are about to purchase leads to a situation where you can’t send it out. Even without an item to purchase, a fee of $3 would make it impossible to send the remaining $2.40 out which is now dust in the wallet.

Now imagine over the course of hundreds or even thousands of these transactions similar to the example above, the user will eventually accumulate a balance that may be significant but is composed of many change inputs. For example, if that amount turned out to be $20 of bitcoin which is significant to most people but is composed mostly of all change meaning some inputs are $0.50 cents here, $0.25 cents here, and $0.75 there amounting to $20, the user might not be able to spend out of it or see very high fees because of the amount of inputs. This is also the primary reason it is so expensive to send money out if users received bitcoins through mining which are usually paid in small amounts and quite often. To combat this, we recommend users who mine to set their payouts to a higher amount so that it reduces the inputs of future transactions.

So why does it cost higher if the transaction consists of many inputs? Well, one analogy to use is it would be like paying for lunch with a 1,000 pennies. It would be difficult and costly in terms of time to count those pennies by hand and to verify the amounts of that transaction. In fact if you had tens of thousands of pennies to count out, would you use your time to count them for free? Would you hire someone to count those pennies? Either way you’re basically paying someone or spending your own valuable time just to have that counted. In bitcoin, having lots of inputs or change is the equivalent of paying with pennies, it’s more difficult and costly to verify and process that transaction and include it in the upcoming blocks compared to if it was a transaction with a smaller amount of inputs. That is why the fees can add up if you have a lot of inputs in the transaction.

**How do I set up the mining fee?**

In Airbitz 2.4.5, users will be able to set their custom fee. This can be done by following the steps below:

-   At the Slide to Confirm screen tap on the BTC field on the right hand side of the 1st field circled in red. (Note this may be set in bits or mbtc depending your denominations settings preference)
    

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

To change the fees, tap on bits circled in red. This may appear as BTC or mBTC depending on the settings preference.

-   A popup will appear with preset fees ranging from low, standard, and high that uses fees from what is recommended by [bitcoinfees.21.co/](https://bitcoinfees.21.co/)
    

![](https://static.intercomassets.com/assets/article_broken_image_placeholder.png)

Enter the fees you wish to use as seen above.

-   If you wish to send higher or lower than the preset amounts, you can instead tap on Custom Fee which will allow you to manually enter the amount of satoshis per byte fee
    
-   Tap done and you will notice the fees change on the right hand side of the fields
    
-   Continue and Slide to Confirm as you would normally to proceed with the transaction
    

Once the transaction is complete, continue to monitor the transaction to see that it goes through especially if a lower fee amount was selected. If the transaction ends up getting dropped, the dropped transactions are now recorded and displayed in the Transaction History screen. As mentioned earlier, this is a new feature added so that in case a user should experience a dropped transaction, the user can easily refer to it and use it as a point of reference as to whether a payment was successfully received or sent out. In the event that the transaction is dropped from the sender, the bitcoin sent will be right back into to the user’s wallet as if it was never sent at all.

**How can we reduce mining fees and Dust?**

The only way to reduce fees going forward is to reduce congestion on the bitcoin network. Right now, the community is exploring two options for accomplishing this.

The first option is to activate a technology called Segwit on the bitcoin network. Together with another technology called Lightning Network, this has the potential to make sending bitcoins significantly cheaper. However, the reduced fees would only carry on for new transactions. This means that bitcoins must be sent out after Segwit is implemented to use that channel for lower fees and the same applies for Lightning Network.

The 2nd would be an increase in block size and/or decrease in transactions that the fees start to climb down again. Once fees are low enough, addresses with low balances will once again become spendable. There are efforts to increase the bitcoin block size, but it is not clear if or when this will take place.

At the time of this writing, the fees have gone down quite a bit so now would be a great time to try to send out any dust and consolidate your wallets just in case we see another spike in fees in the future. To do this, simply create a 2nd wallet inside the same Airbitz account and do a max send into it while using custom or low fees. Now the next time there’s a spike up in fees, your wallet should have a lot less inputs and not cost as much when doing another transaction.

NOTE: Airbitz has been deprecated. If you are attempting to log into Airbitz you will not be able to. Please download Edge ([www.edge.app](http://www.edge.app)) and use the same username and password to access your account.
