// Write your code below 📛
var firstName = "Caleb"
var lastName = "Agyei"

var suffix: String? = "III"
suffix = nil

if let nameOfUnwrappedSuffixVariable = suffix {
  print("Hello, \(firstName) \(lastName) \(nameOfUnwrappedSuffixVariable)")
} else {
  print("Hello, \(firstName) \(lastName)")
}
