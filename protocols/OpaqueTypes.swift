// Write your code below 🚪

protocol ResettableCollection {
    associatedtype T
    var elements: [T] { get }
    mutating func resetAllElements()
}

struct ResettableStringArray: ResettableCollection {
    var elements = [String]()
    mutating func resetAllElements() {
        elements = elements.map { _ in "" }
    }
}

func getResettableCollection() -> some ResettableCollection {
  let hello = ["hello", "hi", "how are you?"]
  return ResettableStringArray(elements: hello)
}

var collection = getResettableCollection()

// print(collection.elements[0].lowercased)
collection.resetAllElements()
print(collection)
