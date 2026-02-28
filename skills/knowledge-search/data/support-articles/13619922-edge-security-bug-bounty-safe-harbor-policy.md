---
title: Edge Security Bug Bounty & Safe Harbor Policy
intercom_id: '13619922'
workspace_id: ourx4xix
state: published
default_locale: en
parent_type: null
parent_id: null
updated_at: 1770220265
description: >-
  Introduction At Edge, the security of our users' funds and data is our
  absolute highest priority. We recognize the vital role that securit...
url: >-
  https://help.edge.app/en/articles/13619922-edge-security-bug-bounty-safe-harbor-policy
---
**Introduction** At Edge, the security of our users' funds and data is our absolute highest priority. We recognize the vital role that security researchers and the community play in keeping our ecosystem safe.

If you believe you have discovered a vulnerability in the Edge Wallet (iOS/Android), Edge Core, or our infrastructure, we encourage you to report it to us immediately. We are committed to working with you to verify and resolve the issue promptly, and we reward valid contributions with Bitcoin (BTC) bounties.

---

# 1\. Safe Harbor (Legal Protection)

Edge supports safe, effective, and responsible security research. If you conduct your research and reporting in compliance with this policy, we consider your conduct "authorized."

-   **We will not** initiate legal action against you for good-faith violations of this policy.
    
-   **We will not** file a complaint with law enforcement against you.
    
-   **We will** support you if a third party initiates legal action against you for research that adheres to this policy.
    

**To remain protected by Safe Harbor, you must:**

-   **Test only your own accounts/wallets.** Never attempt to access, modify, or steal funds from another user.
    
-   **Do no harm.** Do not exploit a vulnerability beyond the minimal steps necessary to prove its existence (Proof of Concept).
    
-   **Avoid disruption.** Do not perform DoS/DDoS attacks or degrade the performance of our services.
    
-   **Report promptly.** Submit your findings via our official form as soon as possible.
    

---

# 2\. Reward Policy (BTC Only)

We value your time and expertise. Our goal is to reward researchers as quickly as possible.

-   **Currency:** All bounties are paid in **Bitcoin (BTC)**. We do not support other cryptocurrencies for payouts.
    
-   **Timing:** We do not require you to wait for a fix to be deployed. In most cases, we issue payment **upon validation** of the vulnerability.
    
-   **Valuation:** Reward amounts are entirely discretionary and determined by the Edge Security Team on a case-by-case basis. We assess the severity, impact, and complexity of each report to determine the appropriate bounty. We prioritize vulnerabilities that pose a direct threat to user funds, private keys, or data privacy.
    

---

# 3\. Scope of Research

## ✅ In-Scope (What to test)

We are primarily interested in vulnerabilities that affect the integrity of the self-custody model and user privacy.

-   **Edge Mobile App:** Android (APK) & iOS.
    
-   **Edge Core:** The `edge-core-js` and currency libraries.
    
-   **Web Services:** `edge.app` and associated backend authentication services.
    

## ⛔ Out-of-Scope (What NOT to test)

The following are strictly prohibited or ineligible for rewards:

-   Social engineering (phishing) of Edge employees or users.
    
-   Physical security attacks against Edge offices or data centers.
    
-   UI redressing / Clickjacking without a demonstrated sensitive action.
    
-   Missing HTTP security headers or cookie flags (unless they lead to a direct exploit).
    
-   Reports from automated scanners without manual verification and a working Proof of Concept.
    
-   Vulnerabilities that require a rooted/jailbroken device to exploit (unless the exploit works on a stock device).
    

---

# 4\. Disclosure Policy

To protect our users, we request that you adhere to the following disclosure guidelines:

-   **Confidentiality:** You must not discuss or disclose the vulnerability to the public or third parties until Edge has released a fix.
    
-   **Updates:** We will keep you informed of our progress in resolving the issue.
    

---

# 5\. How to Submit a Report

All vulnerability reports must be submitted via our official **Bug Bounty Form**.

**Your report must include:**

1.  **Vulnerability Category:** (e.g., Private Key Extraction, RCE, XSS).
    
2.  **Affected Component:** (e.g., Edge Android App, Website).
    
3.  **Proof of Concept (PoC):** Clear, numbered steps to reproduce the issue. Video or Screenshots are highly encouraged.
    
4.  **BTC Address:** A valid Bitcoin address for your bounty payment.
