---
title: Bitcoin vs. Bitcoin Gold vs. Bitcoin Cash vs. Bitcoin Satoshi Vision
intercom_id: '13620010'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220455
description: "*Never mix addresses: BTC, BCH, BTG, and BSV are separate chains. Sending to the wrong chain’s address can permanently lose funds.\_\n*Bitco..."
url: >-
  https://help.edge.app/en/articles/13620010-bitcoin-vs-bitcoin-gold-vs-bitcoin-cash-vs-bitcoin-satoshi-vision
---
## \*Never mix addresses: BTC, BCH, BTG, and BSV are separate chains. Sending to the wrong chain’s address can permanently lose funds.

## \*Bitcoin Gold and Bitcoin Satoshi Vision are currently deprecated on Edge.

## \*If you need to recover funds read these articles

-   ## Recover Bitcoin Cash From Legacy Bitcoin Wallet.
    
-   ## Recover Bitcoin (BTC) sent to a Bitcoin Cash (BCH) address
    
-   ## Recover BCH sent to a "segwit" Bitcoin address
    

---

# Wallet addresses made simple (BTC, BCH, BTG, BSV)

Use this quick guide to recognize the right address **before** you send. If the format doesn’t match, **stop**—it’s the wrong network.

---

# Bitcoin (BTC) — address formats (Edge specifics)

-   **SegWit (bech32)** — starts with `**bc1q…**`  
    *Default in new Edge BTC wallets; lowest fees and best error-checking.*  
    **Example:** `bc1qexampleaddressdontsendxxxxxxxxxxxx`
    
-   **Taproot (bech32m)** — starts with `**bc1p…**`  
    *Modern script type for advanced uses; supported in Edge.*  
    **Example:** `bc1pexampletaprootdontsendxxxxxxxxxx`
    
-   **Wrapped SegWit (P2SH-SegWit)** — starts with `**3…**`  
    *“Compatibility SegWit.” Some services still require this format. Edge can generate it when needed.*  
    **Example:** `3ExampleBTCWrappedSegWitDoNotSend3333`
    
-   **Legacy (P2PKH)** — starts with `**1…**`  
    *Edge lets you create a **No-SegWit** (legacy-only) BTC wallet if you need it, but fees are higher and it’s easier to mix up with other coins.*  
    **Example:** `1ExampleBTCAddressDoNotSend11111111`
    

## Important notes for new users

-   **Prefer** `**bc1…**` **on BTC** inside Edge. It’s cheaper and reduces typos.
    
-   **Wrapped SegWit (**`**3…**`**)** is fine for compatibility, but double-check the network before sending.
    
-   **Legacy BTC (**`**1…**`**) can cause confusion with BCH/BSV,** which also have legacy `1…/3…` formats. If you create a **No-SegWit** BTC wallet in Edge, be extra careful not to paste those addresses into a **Bitcoin Cash** send (or vice versa).
    
-   **Never send across chains.** If you see `bitcoincash:…` or a BCH `q…/p…` CashAddr, that is **not** a BTC address.
    

# Bitcoin Cash (BCH) — address formats (Edge specifics)

-   **CashAddr (recommended):**  
    In Edge, BCH receive addresses **start with** `**q…**` **or** `**p…**` and the app **hides the** `**bitcoincash:**` **prefix**.
    
    -   Example P2PKH: `qzexampleaddressxxxxxxxxxxxxxx`
        
    -   Example P2SH: `pzexampleaddressxxxxxxxxxxxxxx`  
        *Note:* Even if you don’t see it, the full form is `bitcoincash:q…` or `bitcoincash:p…`. It’s still a **BCH** address.
        
-   **Legacy format (use only if required):**  
    BCH can also use legacy Base58 addresses that look like **BTC**: `1…` (P2PKH) or `3…` (P2SH).
    
    -   This **creates confusion** because BTC and BSV also use `1…/3…`.
        
    -   Using legacy increases the risk of sending **BCH↔BTC** by mistake, which is usually **irreversible**.
        

## Safety tips

1.  **Copy from Edge’s BCH “Receive” screen** and send as-is (don’t add/remove text).
    
2.  If an exchange asks for a **legacy** BCH address, double-check the **network is Bitcoin Cash**, then do a **small test send** first.
    
3.  If you see `bc1…`, that’s **Bitcoin (BTC)**, not BCH.
    
4.  When in doubt, ask the sender to include the full form with prefix: `bitcoincash:…`.
    

---

# Bitcoin Gold (BTG)

-   **P2PKH**: typically starts with `G…`
    
    -   Example: `GexampleBTGaddressDoNotSendGGGGGGG`
        
-   **P2SH**: typically starts with `A…`
    
    -   Example: `AexampleBTGmultisigDoNotSendAAAAAA`  
        **Tip:** If it starts with `1`, `3`, or `bc1…`, it’s **not** BTG.
        

---

# Bitcoin SV (BSV)

-   **Legacy formats** only: `1…` (P2PKH) and `3…` (P2SH-style)
    
    -   Examples: `1ExampleBSVaddressDoNotSend111111`  
        `3ExampleBSVmultisigDoNotSend33333`  
        **Tip:** BSV does **not** use `bc1…`. If you see `bc1…`, you’re on BTC.
        

---

# Before you send: quick checks

1.  **Match coin → network → address** (select the right asset in Edge).
    
2.  **Check the first characters** against the list above.
    
3.  **Use the Receive tab** for that coin in Edge; paste the address to confirm it’s valid for that network.
    
4.  **Test with a small amount** if it’s a new contact/wallet.
    
5.  **Never cross chains**—a send to the wrong network is usually irreversible.
    

---

# What each one is

## Bitcoin (BTC)

-   **Goal:** Secure, censorship-resistant money; slow, conservative changes.
    
-   **Mining:** SHA-256 (ASIC miners).
    
-   **Blocks/fees:** Smaller blocks, variable fees; Layer-2 (Lightning) helps with small payments.
    
-   **Ecosystem:** Most exchanges, wallets, infrastructure, and developer activity.
    

## Bitcoin Cash (BCH)

-   **Goal:** “Peer-to-peer cash” with **bigger blocks** to keep on-chain fees low.
    
-   **Mining:** SHA-256 (compatible hardware with BTC, but separate chain).
    
-   **Trade-off:** Cheaper payments; smaller network and developer base than BTC.
    

## Bitcoin Gold (BTG)

-   **Goal:** “Make mining decentralized again” (GPU-friendly via **Equihash**).
    
-   **History/notes:** Smaller community; infrastructure thinned over time (fewer reliable public nodes and providers).
    
-   **Status in Edge:** **Deprecated** (details below).
    

## Bitcoin SV (BSV)

-   **Goal:** Restore “Satoshi’s vision” with **very large blocks** and on-chain scaling.
    
-   **Notes:** Protocol and node behavior diverge from BTC/BCH conventions; frequent ecosystem churn; limited third-party infra.
    
-   **Status in Edge:** **Deprecated** (details below).
    

---

# Why Edge deprecated Bitcoin Gold (BTG) and Bitcoin SV (BSV)

Supporting a network in a non-custodial wallet requires **reliable, secure, and maintainable** infrastructure (healthy public nodes, stable RPC behavior, current libraries, active upstream maintenance). Over time, BTG and BSV failed these requirements for Edge users:

1.  **Insufficient reliable nodes / upstream support**
    
    -   At various points we could not consistently connect to robust public nodes or get dependable chain data. Without trustworthy peers, a wallet cannot safely **fetch balances**, **track confirmations**, or **broadcast** transactions.
        
2.  **Security & maintenance risk**
    
    -   Stale or sparsely maintained node software and ecosystem tools raise the risk of bugs, chain stalls, or edge-case failures—unacceptable for user safety.
        
3.  **Protocol/API divergence & churn (especially BSV)**
    
    -   Repeated incompatibilities with standard Bitcoin tooling, changing assumptions, and non-standard behaviors increased complexity and the risk of misbroadcasts or unexpected failures.
        
4.  **Low usage vs. high operational cost**
    
    -   User activity and liquidity on these chains didn’t justify the ongoing infrastructure, engineering, and monitoring burden—resources are better spent improving high-demand, secure networks.
        

**Bottom line:** We deprecated BTG and BSV to protect users and focus on well-supported networks. This does **not** affect your ownership of funds already on those chains.

---

# “Do I lose my coins if Edge drops support?”

No. Your coins live **on their blockchains**, not in Edge. Edge is a **non-custodial** wallet—**you** control access via your recovery phrase. If Edge no longer supports a chain:

-   Your funds remain on that chain’s addresses.
    
-   You can **recover** the same wallet using your **12/24-word recovery phrase** in another wallet that still supports that chain.
    
-   If you still have spendable access elsewhere, consider **moving** funds to a widely supported asset/network.
    

**Safety tip:** Before importing your recovery phrase into any third-party wallet, verify the app’s authenticity and reputation. If you hold BTC/BCH in the same seed, consider first moving those to fresh addresses in Edge to reduce exposure (standard best practice when using your phrase in new software).

---

# FAQs

**Can I convert BTG/BSV inside Edge?**  
Not if the chain is deprecated. You’d need to recover in a wallet that supports that chain, then send to an exchange or bridge that lists it—**at your own risk**.

**Why does BCH still work if it’s also a fork?**  
BCH maintains more compatible tooling, more stable infrastructure, and stronger third-party support—making it feasible to support safely.

**Are BTC and BCH addresses interchangeable?**  
No. BCH uses **cashaddr** (e.g., `bitcoincash:qq...`). BTC uses legacy (`1...`), nested SegWit (`3...`), or bech32 (`bc1...`). Always match coin → network → address format.

**What if a network “comes back”?**  
If a previously deprecated chain regains healthy infrastructure and user demand, we can reassess. We won’t compromise on reliability or user safety.

---

# How to tell which coin you’re using (quick checks)

-   **Ticker & logo** in Edge.
    
-   **Address format** when receiving (e.g., `bc1` = BTC bech32; `bitcoincash:` = BCH cashaddr).
    
-   **Network name** in the transaction details.
    

---

# Takeaways

-   BTC and BCH remain supported, liquid, and well-maintained.
    
-   BTG and BSV were deprecated due to **infrastructure, security, and maintenance** realities—not ideology.
    
-   Your funds are **always yours**: keep your **recovery phrase** safe so you can restore anywhere if needed.
    

---
