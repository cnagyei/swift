struct Office {
    let paperclipCost = 10

    // 1: Add your private variable below
    private var paperclipSales: Int
    // 2: Add an initializer
    init(paperclipSales: Int) {
      self.paperclipSales = paperclipSales
    }
    func printTotalRevenue() {
        // 3: Modify the totalRevenue
        let totalRevenue = paperclipSales * paperclipCost
        print("Our total revenue this month is \(totalRevenue).")
    }
}

// 4: Create an Office
var alphaOffice = Office(paperclipSales: 18)

// 5: Print the total revenue
alphaOffice.printTotalRevenue()

// 6 + 7: Attempt to access a private property
// let invalidAccess = alphaOffice.paperclipSales

