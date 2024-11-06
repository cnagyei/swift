// Write your code below 🥔
struct Store: Hashable {
  var name: String
  var products: [String]
}

let jaysPizza = Store(name: "Jay's Pizza", products: ["Pizza", "Soda", "Salad"])

var salesByStore: [Store: Double] = [jaysPizza: 100]
