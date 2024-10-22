enum Vehicle: Character { // 1: Define the raw value type here
    // 2: Explicitly assign values to these cases
    case truck = "T"
    case boat = "B"
    case airplane = "A"
}
 
// 3: Print the raw value here
print(Vehicle.airplane.rawValue)

// 4: Define constant here
let myBoat = Vehicle(rawValue: "B")
