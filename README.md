# flow-module-7
CryptoGeeks NFT Collection
The CryptoGeeks NFT Collection project consists of smart contracts and scripts to manage NFTs (Non-Fungible Tokens) using the CryptoGeeks contract. This README provides an overview of the project and instructions on getting started.

Overview
The project includes the following components:

CryptoGeeks Contract: This contract implements the NFT standard and manages the CryptoGeeks collection. It defines functionalities for creating collections, minting NFTs, and accessing metadata.

AccessNFT Script: This script displays metadata for a given NFT ID owned by an account.

CreateCollection Transaction: This transaction creates a CryptoGeeks collection for the signer.

MintNFT Transaction: This transaction mints a new NFT into an existing collection.

GetNFTIds Script: This script returns all NFT IDs in a collection.

Getting Started
Follow these steps to get started with the CryptoGeeks NFT Collection project:

1. Deploy the NFT Standard
Deploy the NFT standard contract to account 0x01. This contract provides the basic functionalities required for managing NFTs.

2. Import the NFT Standard
Import the NFT standard contract into other scripts and transactions where NFT functionalities are required.

3. Deploy the CryptoGeeks Contract
Deploy the CryptoGeeks.cdc contract to your desired account. This contract extends the NFT standard and implements additional functionalities specific to the CryptoGeeks collection.

4. Create a Collection
Execute the createCollection.cdc transaction to create a CryptoGeeks collection for your account. This will enable you to start managing NFTs within your collection.

5. Mint an NFT
Execute the mintNFT.cdc transaction to mint a new NFT into your existing CryptoGeeks collection. Provide the necessary metadata for the new NFT during the minting process.

6. Get NFT IDs
Execute the getNFTIds.cdc script to retrieve all NFT IDs present in your CryptoGeeks collection. This can help you manage and track the NFTs within your collection more effectively.
