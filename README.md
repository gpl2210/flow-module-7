# CryptoGeeks NFT Collection

The CryptoGeeks NFT Collection project consists of smart contracts and scripts designed to manage Non-Fungible Tokens (NFTs) using the CryptoGeeks contract. This README provides an overview of the project and instructions on how to get started.

## Overview

The project includes the following components:

- **CryptoGeeks Contract**: This contract implements the NFT standard and oversees the CryptoGeeks collection. It offers functionalities for creating collections, minting NFTs, and accessing metadata.

- **AccessNFT Script**: This script displays metadata for a specified NFT ID owned by an account.

- **CreateCollection Transaction**: This transaction initiates the creation of a CryptoGeeks collection for the signer.

- **MintNFT Transaction**: This transaction mints a new NFT into an existing CryptoGeeks collection.

- **GetNFTIds Script**: This script retrieves all NFT IDs within a collection.

## Getting Started

Follow these steps to begin using the CryptoGeeks NFT Collection project:

1. **Deploy the NFT Standard**:
   Deploy the NFT standard contract to account `0x01`. This contract provides fundamental functionalities necessary for managing NFTs.

2. **Import the NFT Standard**:
   Import the NFT standard contract into other scripts and transactions requiring NFT functionalities.

3. **Deploy the CryptoGeeks Contract**:
   Deploy the `CryptoGeeks.cdc` contract to your chosen account. This contract extends the NFT standard and incorporates additional functionalities specific to the CryptoGeeks collection.

4. **Create a Collection**:
   Execute the `createCollection.cdc` transaction to establish a CryptoGeeks collection for your account. This action enables you to commence managing NFTs within your collection.

5. **Mint an NFT**:
   Execute the `mintNFT.cdc` transaction to mint a new NFT into your existing CryptoGeeks collection. Provide the required metadata for the new NFT during the minting process.

6. **Get NFT IDs**:
   Execute the `getNFTIds.cdc` script to retrieve all NFT IDs present in your CryptoGeeks collection. This can aid in effectively managing and tracking the NFTs within your collection.

By following these steps, you can begin utilizing the CryptoGeeks NFT Collection project to manage and interact with your NFTs in a customizable and efficient manner.
