struct Calculator {
  // Reduce
  func reduce(_ nums: [Int], using nextPartialResult: (Int, Int) -> Int, startingAt initialResult: Int) -> Int {
    var total = initialResult
    for num in nums {
      total = nextPartialResult(total, num)
    }
    return total
  }

  // Filter
  func filter(_ nums: [Int], using isIncluded: (Int) -> Bool) -> [Int] {
    var filteredNums = [Int]()
    for num in nums {
      if isIncluded(num) {
        filteredNums.append(num)
      }
    }
    return filteredNums
  }

  // Map
  func map(_ nums: [Int], using transform: (Int) -> Int) -> [Int] {
    var mappedNums = [Int]()
    for num in nums {
      mappedNums.append(transform(num))
    }
    return mappedNums
  }
}

// Create instance of struct Calculator
var myCalculator = Calculator()

// Test reduce
var myArray = [3, 4, 5, 1]
let addition: (Int, Int) -> Int = { (num1, num2) in
  num1 + num2
}
let sum = myCalculator.reduce(myArray, using: addition, startingAt: 0)
print(sum)

// Test filtering
var newArray: [Int] = [4, 0, 9, 0]
let filteredArray = myCalculator.filter(newArray, using: {number in
  number != 0
})
print(filteredArray)

// Test map
var toMapArray = [3, 4, 5, 8, 43]
let mappedArray = myCalculator.map(toMapArray, using: { element in
  element + 3
})
print(mappedArray)
