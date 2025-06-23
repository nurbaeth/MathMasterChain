# 🧠 MathMasterChain   
   
**MathMasterChain** is an on-chain math quiz game built with Solidity.     
No tokens, no rewards — just pure, trustless math battles on the blockchain.   
 
--- 
   
## 🚀 What is this? 

MathMasterChain lets players test their math skills by answering questions stored immutably on the Ethereum blockchain.  
All interactions (questions, answers, scores) happen entirely on-chain.  

---
   
## ✨ Features
 
- 🧮 Add math questions directly to the smart contract
- ✅ Players answer only once per question
- 📊 Scores are stored publicly and transparently
- ⚖️ No tokens, no prizes — just on-chain glory
  
---
  
## 📦 Contract Overview

```solidity   
function addQuestion(string memory question, uint256 answer) public onlyOwner  
