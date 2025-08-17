# Tokenized Inventory Smart Contract

# Description
This Move smart contract provides a basic framework for **tokenizing expensive parts** and managing their borrowing lifecycle on the Aptos blockchain.  
It defines a `Part` resource with attributes such as a unique ID, name, and borrowing status.  
The contract includes two core functions:
- **register_part** → Allows an owner to register a new part into the inventory.  
- **borrow_part** → Allows a user to borrow a part, with rules ensuring that it cannot be borrowed more than once simultaneously.  

---

# Vision
The vision is to **digitally represent physical or high-value parts on-chain** and to encode borrowing rules directly into the blockchain.  
This ensures:
- Transparent tracking of assets.  
- Prevention of double usage or fraudulent borrowing.  
- Secure and immutable records of part ownership and lending.  

---

# Future Scope
This minimal version serves as a starting point. Potential enhancements include:
1. Supporting **multiple parts per owner** using a vector-based inventory.  
2. Implementing a **return function** to reset the borrowing status.  
3. Adding **borrower identity tracking** to record who borrowed the part.  
4. Integrating **time-based rules** such as due dates and penalties.  
5. Enabling **monetization** through borrowing fees or staking mechanisms.  
6. Linking with **NFT standards** to allow tradable, tokenized parts across marketplaces.  

---

# Contract Address
Deployed Contract Address:  0xe40679ef774fb80a3b9095b0cf60a66a40c345c80a7f61571334952ae58db7a9
Network: Aptos Devnet


<img width="1905" height="900" alt="image" src="https://github.com/user-attachments/assets/7aacd3c9-8601-4d4f-a0fb-08b2f81fa87a" />
