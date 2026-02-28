---
title: Why do I need a login & password to use the Edge wallet?
intercom_id: '13619736'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770219950
description: |-
  The login and password provide two critical pieces of the Edge security model.
  1. They are the source of the encryption key used to encryp...
url: >-
  https://help.edge.app/en/articles/13619736-why-do-i-need-a-login-password-to-use-the-edge-wallet
---
The login and password provide two critical pieces of the Edge security model.

1\. They are the source of the encryption key used to encrypt private keys and user data before it is backed up. This encryption key is therefore owned only by the user, not Edge. Edge has no ability to decrypt user data or spend users’ funds.  
2\. They are the credentials used to obtain your encrypted data on multiple devices, should you need access on multiple devices.

Even though a login & password might \*feel\* like you are connecting to a hosted service, in reality, the Edge wallet can \*login\* locally on your device without access to the network. This \*offline\* login simply decrypts the data already on your device.

Users can try this as an example:

1\. Login to your account.  
2\. Settings -> Logout (this prevents the server assisted PIN relogin)  
3\. Enable Airplane Mode  
4\. Login to your account using your full login & password

This is one key aspect of the strong decentralized architecture of Edge. Edge servers are not actually required to Send funds from a wallet as it accesses the Bitcoin network directly without the need of any Edge infrastructure. Should Edge ever completely shutdown, users will still be able to send out their funds using this functionality.
