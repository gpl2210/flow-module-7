import CryptoHunter from 0x05
import NonFungibleToken from 0x05

transaction() {
  prepare(signer: AuthAccount) {
    // Store a `CryptoPoops.Collection` in our account storage.
    signer.save(<- CryptoHunter.createEmptyCollection(), to: /storage/MyCollection)
    
    // NOTE: We expose `&CryptoPoops.Collection{CryptoPoops.CollectionPublic}`, which 
    // only contains `deposit` and `getIDs`.
    signer.link<&CryptoHunter.Collection{CryptoHunter.CollectionPublic, NonFungibleToken.CollectionPublic}>(/public/MyCollection, target: /storage/MyCollection)
    log("Created Collection Successfully")
  }
}
