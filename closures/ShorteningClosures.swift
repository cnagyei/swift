// We have a function that transforms an array of strings.

let strings = ["remit", "spans", "level"]

func transform(strings: [String], transformer: (String) -> String) -> [String] {
  var transformedStrings = [String]()
  for string in strings {
    transformedStrings.append(transformer(string))
  }
  return transformedStrings
}

// Full function call with closure
print(transform(strings: strings) {
  (words: String) -> String in
  return String(words.reversed())
})

// Call without closure return and return type
print(transform(strings: strings) { words in
  String(words.reversed())
})

// Call with shorthand argument names
print(transform(strings: strings) { String($0.reversed())})
