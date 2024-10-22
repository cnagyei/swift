enum Vehicle {
    case truck(isFourWheelDrive: Bool)
    case boat
    case airplane
    
    // 1: Create mutating instance method here
    mutating func goOffRoad() {
       self = .truck(isFourWheelDrive: true)
    }
}

var myRide = Vehicle.airplane

// 2: Call method here 
myRide.goOffRoad()

// 3: Print the contents of myRide
print(myRide)
