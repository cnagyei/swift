// Test your knowledge below 🧠
struct Dog {
  var age: Int
  var name: String

  init(age: Int, name: String) {
    self.age = age
    self.name = name
  }
}

struct Cat {
  var age: Int
  var name: String
  
  init(age: Int, name: String) {
    self.age = age
    self.name = name
  }
}

var bobby = Dog(age: 10, name: "Bobby")
var pussy = Cat(age: 2, name: "pussy")

print("The dog's name is \(bobby.name) and is \(bobby.age) years old")

print("The cat's name is \(pussy.name) and is \(pussy.age) years old")


struct Pet {
  var numPet: Int
  var myDog: Dog?
  var myCat: Cat?

  init(numPet: Int, myDog: Dog, myCat: Cat) {
    self.numPet = numPet
    self.myDog = myDog
    self.myCat = myCat
  }
}

var homePet = Pet(numPet: 10, myDog: Dog(age: 10, name: "Kwanzu"), myCat: Cat(age: 2, name: "Alauf"))

print(homePet.numPet)

//unwrap
if let myDog = homePet.myDog {
  print(myDog.name)
}



