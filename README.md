# Generative NFT Collection (ERC-721)

A production-ready, secure ERC-721 Smart Contract for a generative NFT collection built with Solidity 0.8.20 and OpenZeppelin libraries.

## 🚀 Key Features
- **Supply Cap:** Hard-capped at 10,000 NFTs.
- **Fair Minting Limits:** Restricted to a maximum of 5 NFTs per transaction to prevent bot hoarding.
- **Paid Mint Mechanism:** Native ETH payments required (0.05 ETH per token).
- **Owner Withdrawal:** Secure fund extraction pattern using low-level calls (`call`).

## 🛡️ Security Considerations & Audit Adjustments
- **CEI Pattern Compliance:** State updates (`totalSupply`) occur **before** external calls (`_safeMint`) to prevent potential Reentrancy vulnerabilities via `onERC721Received`.
- **Access Control:** Restricted admin functions (`withdraw`) protected with OpenZeppelin's `Ownable`.
- **Safe Transfers:** Utilizes `_safeMint` to guarantee recipient compatibility with ERC-721 tokens.

## 🛠️ Tech Stack
- **Language:** Solidity `^0.8.20`
- **Framework:** OpenZeppelin Contracts v5.0
- **Standards:** ERC-721, Ownable
