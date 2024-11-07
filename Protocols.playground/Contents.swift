import UIKit

struct Resident: Hashable {
    var name: String
    var age: Int
    var address: String
    var socialSecurityNum: String
}

let taxesByResident = [Resident: Double]()
