// Write your code below ❌3️⃣

func tripleValues<T: Numeric>(in nums: [T]) -> [T] {
    return nums.map { $0 * 3 }
}

let intArr = [1,2,3]
let doubleArr = [1.0, 2, 3.9]

print(tripleValues(in: intArr))
print(tripleValues(in: doubleArr))
