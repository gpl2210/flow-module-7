import CryptoHunter from 0x05
import NonFungibleToken from 0x05

transaction(recipient: Address, name: String, yourParentName: String, PureNumber: Int) {

  prepare(signer: AuthAccount) {
    // Get a reference to the `Minter`
    let minter = signer.borrow<&CryptoHunter.Minter>(from: /storage/Minter)
                    ?? panic("This signer is not the one who deployed the contract.")

    // Get a reference to the `recipient`s public Collection
    let recipientsCollection = getAccount(recipient).getCapability(/public/MyCollection)
                                  .borrow<&CryptoHunter.Collection{CryptoHunter.CollectionPublic}>()
                                  ?? panic("The recipient does not have a Collection.")

    // mint the NFT using the reference to the `Minter` and pass in the metadata
    let nft <- minter.createNFT(name: name, yourParentName: yourParentName, PureNumber: PureNumber)

    // deposit the NFT in the recipient's Collection
    recipientsCollection.deposit(token: <- nft)

    log("mint successfully")
  }

}
 
