// Enter your code below

func createMultiplier(factor: Int) -> () -> Int {
  var value: Int = 1
  let multiplier: () -> Int = {
    value *= factor
    return value
  }
return multiplier
}

let hello = createMultiplier(factor: 3)
print(hello())
