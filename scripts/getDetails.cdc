import CryptoHunter from 0x05
import NonFungibleToken from 0x05

pub fun main(index: UInt64,User: Address) {

    // Get a reference to the User`s public Collection
    let recipientsCollection = getAccount(User).getCapability(/public/MyCollection)
                                  .borrow<&CryptoHunter.Collection{CryptoHunter.CollectionPublic}>()
                                  ?? panic("The recipient does not have a Collection.")

    // Borrow a reference to the CryptoPoops NFT with the specified id
    var NFT = recipientsCollection.borrowAuthNFT(id: index)

    // Log different fields in the nft
    log(NFT.yourParentName)
    log(NFT.name)
}
