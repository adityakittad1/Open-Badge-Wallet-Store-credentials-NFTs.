📘 README: Open Badge Wallet
1. Project Title
Open Badge Wallet – Credential Storage using NFTs on Stacks

2. Project Description
Open Badge Wallet is a Clarity-based smart contract that allows users to store educational or professional credentials (badges) as NFTs. Each badge is uniquely identified and associated with the recipient and its name, ensuring ownership and verification on the blockchain.

3. Project Vision
The vision is to empower learners and professionals to own and manage their credentials in a decentralized, tamper-proof, and portable format. By using NFTs, this wallet ensures that badges can’t be forged and are always accessible, regardless of the issuing platform.

4. Future Scope
🏛 Issuer Authority: Add admin/organization-only badge minting.

🔗 Metadata URIs: Link off-chain metadata or certificates via token URI.

♻️ Badge Revocation: Enable revoking invalidated badges.

🔄 Transferable Credentials: Optional badge transferability for endorsements or delegation.

🎓 Badge Categories: Add classification for academic, corporate, and community credentials.

5. Contract Add 
   Contract Address: ST3DCPSFKM6S6YWP2K1QBHS77MJAE134XPA7873Q6.Open-Badge-Wallet-Store-credentials-NFTs
   

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/67a4c6b4-c08b-4bd3-89f8-316f73e5516d" />

issue-badge: Mints a unique NFT to a user with a badge name. Only the user can mint for themselves.

get-badge-info: Returns metadata (recipient, badge name) for a given badge ID.

This simple framework allows you to extend the contract as needed for more complex use cases in decentralized credential management.
