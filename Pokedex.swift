// Write your code below 🤾‍♂️ 
class Pokemon {
  var num = 0
  var name = ""
  var type = [""]
  var ability = [""]

  init(num: Int, name: String, type: [String], ability: [String]) {
    self.num = num
    self.name = name
    self.type = type
    self.ability = ability
  }

  func displayInfo() {
    print("Number:      #\(self.num)")
    print("Name:        \(self.name)")
    print("Type:        \(self.type)")
    print("Ability:     \(self.ability)")
    print("=============================")
  }
}

var bulbasaur = Pokemon(num: 1, name: "Bulbasaur", type: ["Grass 🌱", "Poison 💀"], ability: ["Overgrow"])

var charmander = Pokemon(num: 4, name: "Charmander", type: ["Fire 🔥"], ability: ["Blaze"])

var squirtle = Pokemon(num: 7, name: "Squirtle", type: ["Water 💧"], ability: ["Torrent"])

class GigantamaxPokemon: Pokemon {
  var location = ""
  
  init(num: Int, name: String, type: [String], ability: [String], location: String) {
    self.location = location
    
    super.init(num: num, name: name, type: type, ability: ability)
  }

  override func displayInfo() {
    print("Number:      #\(self.num)")
    print("Name:        \(self.name)")
    print("Type:        \(self.type)")
    print("Ability:     \(self.ability)")
    print("Location:     \(self.location)")
    print("=============================")
  }
}

var meowth = GigantamaxPokemon(num: 52, name: "Meowth", type: ["Normal"], ability: ["Pickup"], location: "Special Event")

bulbasaur.displayInfo()
charmander.displayInfo()
squirtle.displayInfo()
meowth.displayInfo()


