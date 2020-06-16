import Foundation
protocol CryptoCurrency {
  var name: String {get}
  var price: Int {get set }
  func showHistory()
  mutating func transfer()
  init(name: String)
}
struct Bitcoin: CryptoCurrency {
  init(name: String) {
    self.name = name
  }
  
  mutating func transfer() {
    print("transferring btc")
  }
  
  func showHistory() {
    print("btc history")
  }
  
  let name: String
  var price: Int = 10000
}

class Ethereum: CryptoCurrency {
  required init(name: String) {
    self.name = name
  }
  
  func transfer() {
    print("transferring eth")
  }
  
  func showHistory() {
    print("eth history")
  }
  
  var name: String = "eth"
  var price: Int = 10000
}

let btc = Bitcoin(name: "btc")
let eth = Ethereum(name: "eth")
var cryptoCurrencies: [CryptoCurrency] = [CryptoCurrency]()
cryptoCurrencies.append(btc)
cryptoCurrencies.append(eth)
//print(cryptoCurrencies)
cryptoCurrencies[0].name
cryptoCurrencies[1].transfer()

