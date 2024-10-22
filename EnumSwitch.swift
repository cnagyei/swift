enum Vehicle {
    case airplane
    case boat
    case truck
}

// 1: Add instance of Vehicle here
var myRide = Vehicle.airplane
 
// 2: Add switch statement here 
switch myRide {
  case .airplane:
    print("Let's fly to Peru")
  case .boat:
    print("Let's sail to Hawaii")
  default:
    print("Hello")
}
