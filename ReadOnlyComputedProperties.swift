struct Office {    
    let paperclipCost = 10
    private var paperclipSales: Int

    // 1: Create a Read-only Computed Property below  
    var totalRevenue: Int {
      get {
        return (paperclipCost * paperclipSales) + getSecretRevenue()
      }
    }

    init(paperclipSales: Int) {
        self.paperclipSales = paperclipSales
    }
    
    private func getSecretRevenue() -> Int {
        return 100
    }
    
    
    func printTotalRevenue() {
        // 2: Modify the function to use the new property
        print("Our total revenue this month is \(totalRevenue)")
    }
}

let alphaOffice = Office(paperclipSales: 18)

// 3: Print the value of alphaOffice's totalRevenue below by accessing the computed variable
print(alphaOffice.totalRevenue)

