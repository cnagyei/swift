import UIKit

// Building our garden
enum Month {
    case january
    case february
    case march
    case april
    case may
    case june
    case july
    case august
    case september
    case october
    case november
    case december
}

protocol Plantable {
    var plantMonth: Month { get }
    var plantingInstructions: String { get }
}

protocol Harvestable {
    var harvestMonth: Month { get }
    var harvestingInstructions: String { get }
}

protocol Gardenable: Plantable, Harvestable {
    func printGardeningTips() -> ()
}

extension Gardenable {
    func printGardeningTips() -> () {
        print("Follow these Gardening 101 tips for a bountiful harvest. 1) Make sure you always water your plant the exact amount that it needs. \(harvestingInstructions). 2) Make sure you know what zone that you're planting in to ensure that the plants you're planting are in their optimal environment")
    }
}

// Planting, watering, and harvesting Kale
struct Kale: Gardenable {
    var plantMonth: Month = .september
    var plantingInstructions: String {
        "Kale should be planted 6 to 8 weeks before the first frost in in-ground gardens, raised beds, or containers."
    }
    
    var inchesofWater = 2
    var frequency = "weekly"
    var wateringInstructions: String {
        "Kale needs to be watered \(inchesofWater) of water \(frequency)"
    }
    
    var harvestMonth: Month = .november
    var harvestingInstructions: String {
        "Kale should be harvested in \(harvestMonth)"
    }
}

func printTips<T: Gardenable>(for plants: [T]) -> () {
    for plant in plants {
        plant.printGardeningTips()
    }
}

let vegetables = [Kale()]
printTips(for: vegetables)
