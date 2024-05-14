import CryptoHunter from 0x05

pub fun main(account: Address, id: UInt64): Data {
  let CryptoPoopsCollection = getAccount(account).getCapability(/public/gsasm)
                        .borrow<&CryptoHunter.Collection{CryptoHunter.CollectionPublic}>()
                        ?? panic("Could not borrow the Collection from the account.")
  let CryptoPoops = CryptoPoopsCollection.borrowNFT(id: id) as! &CryptoHunter.NFT?
  return Data(CryptoPoops, CryptoPoops!.name)
}

pub struct Data {
  pub let CryptoPoops: &CryptoHunter.NFT?
  pub let name: String

  init(_ CryptoDaps: &CryptoHunter.NFT?, _ name: String) {
    self.CryptoPoops = CryptoDaps
    self.name = name
  }
}
