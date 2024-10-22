enum TrueMoringa {
  // Associated values
  case moringaConnectInc(isParent: Bool)
  case trueFactory(numberOfEmployees: Int)
  case trueFarms(numberOfFarms: Int)

  // Method - add new employees to True Factory
  mutating func addEmployees(add: Int) {
    switch self {
      case let .moringaConnectInc(isParent):
        print("USA is the \(isParent) parent")

      case let .trueFactory(numberOfEmployees):
        print("Existing employees:  \(numberOfEmployees)")
        print("New employees:       \(add)")
        print("We now have:         \(numberOfEmployees + add) employees")

      case let .trueFarms(numberOfFarms):
        print("We have \(numberOfFarms) farms")
    }
  }
}

let myCompany = TrueMoringa.moringaConnectInc(isParent: true)
print(myCompany)

var factory = TrueMoringa.trueFactory(numberOfEmployees: 70)
print(factory)

var farms = TrueMoringa.trueFarms(numberOfFarms: 2)
print(farms)

print("=================")
var myParent = TrueMoringa.moringaConnectInc(isParent: false)
myParent.addEmployees(add: 20)

print("=================")
//var myFactory = TrueMoringa.trueFactory(numberOfEmployees: 5)
factory.addEmployees(add: 50)

print("=================")
farms.addEmployees(add: 20)
