struct Office {    
    let paperclipCost = 10
    private var paperclipSales: Int
    
    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }
    
    // 1: Create a private method named getSecretRevenue()
    private func getSecretRevenue() -> Int {
      return 100
    }

    func printTotalRevenue() {
        // 2: Add the secret revenue to totalRevenue
        let totalRevenue = (paperclipSales * paperclipCost) + getSecretRevenue()
        print("Our total revenue this month is \(totalRevenue).")
    }
    
}

let alphaOffice = Office(paperclipSales: 18)
alphaOffice.printTotalRevenue()
// 3: Attempt to call the private method
// alphaOffice.getSecretRevenue()

