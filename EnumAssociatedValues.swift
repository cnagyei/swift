enum Vehicle {
    case truck(isFourWheelDrive: Bool) // 1: Add associated value here
    case boat
    case airplane
}
 
let myRide = Vehicle.truck(isFourWheelDrive: true) // 2: Set associated value here
switch myRide {
case let .truck(isFourWheelDrive): // 3: Extract value here
    // 4: Add logic here
    if isFourWheelDrive {
      print("Let's go to the mountains")
    } else {
      print("Let's go to the store.")
    }
case .boat:
    print("Let's sail to Hawaii")
case .airplane:
    print("Let's fly to Peru")
}
