struct Office {
    var paperclipCost = 10

    // 1: Give the paperclipSales property a private setter

    private(set) var paperclipSales: Int {
        willSet {
            print("We adjusted the sales to \(newValue) paperclips.")
        }
        didSet {
            print("Originally we sold \(oldValue) paperclips.")
        }
    }
    
    var totalRevenue: Int {
        get {
            return (paperclipSales * paperclipCost) + getSecretRevenue()
        }
        set(newTotalRevenue) {
            paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
        }
    }

    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }
    
    private func getSecretRevenue() -> Int {
        return 100
    }
    
    func printTotalRevenue() {
        print("Our total revenue this month is \(totalRevenue).")
    }    
}

var alphaOffice = Office(paperclipSales: 18)
alphaOffice.totalRevenue = 400
alphaOffice.printTotalRevenue()

// 2: Print the value of paperclipSales to the console.
print(alphaOffice.paperclipSales)


// 3 + 4: Attempt to set the value of paperclipSales.
// alphaOffice.paperclipSales = 400




