import UIKit

let turtleAbility: (String) -> Void = { turtle in
    switch turtle {
    case "Leonardo":
        print("Jujitsu")
    case "Raphael":
        print("Super strength")
    case "Donatello":
        print("Intelligence")
    case "Michelangelo":
        print("Eating pizza")
    default:
        print("Unknown TNMT")
    }
}

func description(for turtle: String, descriptionClosure: (String) -> Void) {
    descriptionClosure(turtle)
}

// Call
description(for: "Michelangelo", descriptionClosure: turtleAbility)
