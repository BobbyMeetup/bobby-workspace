---
title: How does lost password recovery work in Edge?
intercom_id: '13619717'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770219923
description: >-
  Here at Edge we use a username, password, and 2FA combo for wallet creation,
  encryption, and backup. We’ve kept some of the same usability...
url: >-
  https://help.edge.app/en/articles/13619717-how-does-lost-password-recovery-work-in-edge
---
Here at Edge we use a username, password, and 2FA combo for wallet creation, encryption, and backup. We’ve kept some of the same usability patterns of traditional applications intact, and apply them in a new way for a new type of application: a mobile cryptocurrency wallet.

A strong [cryptographic hash](https://simple.wikipedia.org/wiki/Cryptographic_hash_function) of users’ password is used to encrypt all account and wallet information, including private keys. As Edge does not have access to users’ credentials, it also cannot access user funds and does not maintain any information about its users. During the account creation process, Edge never asks for your name, phone number, email or any personal information that ties your identity to an account. There are also multiple warnings that the password is known only to you and that Edge cannot see or reset it.  
  
This puts some responsibility on the users to remember their account information. Our architecture keeps the user in control and offers tools to help the user secure their account with some fail-safes for adverse events and a support team to help with any questions or issues.

One of those fail-safes users can set up is Password Recovery. This isn’t a traditional password recovery in that we don’t know user passwords or emails and can’t send users a link to change the password in case they forget. If we knew user passwords it would allow us to access user funds. This required us to devise a unique method of password recovery that didn’t require us to have full access to user data and keys. Inspired by the multi-signature capabilities of bitcoin and other cryptocurrencies, we implemented a split-key recovery mechanism which is both familiar and forgiving.

Our Password Recovery requires the user to choose two questions and provide their unique answers. The user then sends an email to themselves that includes a special recovery link

In the event a user forgets their password, tapping on the link in their email will take the user to their questions. After providing the right answers, they will be logged back into their account and are able to reset their password.

# How is this accomplished?

As mentioned above, we utilize a split key mechanism, which splits up a second decryption password into two separate keys which on their own are useless but when combined will allow a user access to their account. Where are the two keys?

When a user emails themselves the recovery link we talked about earlier, they are sending themselves one of the keys (Key A). Key A is also used to encrypt their chosen questions and hash their answers. The other key (Key B) is sent to Edge servers along with the encrypted questions and hashed answers. To restore a user’s access to their account, they must go to their email, click on the recovery link and enter their username. This downloads their encrypted questions from Edge and decrypts them using Key A for display to the user.

The user enters their answers which are then hashed with Key A (preventing Edge from knowing the answers themselves) and sent to Edge servers. Edge servers can compare the hashed answers with those stored during the setup process. If they match, Edge servers send back Key B.

On the user’s device, Key A and B are combined and are used to login to and decrypt their account and wallets.

Edge Password Recovery is revolutionary for cryptocurrency wallet security and usability. Without Edge having access to any user funds or knowledge of any personal information we’re able to provide users with a tool that helps protect themselves from mistakes like forgetting a password. With just a simple two question set up users have an easy to use mechanism to recover their encrypted data. Which in this case is their money! No other non-custodial cryptocurrency wallet can do this. Edge does.

Click [here](https://support.edge.app/knowledge/articles/7019291989787/en-us?brand_id=6923901587227) to learn how to setup Password Recovery.
