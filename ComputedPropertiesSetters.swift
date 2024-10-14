struct Office {  
    let paperclipCost = 10
    private var paperclipSales: Int
    
    var totalRevenue: Int {
        get {
            return (paperclipCost * paperclipSales) + getSecretRevenue()
        }
        // 1 + 2: Add a setter
        set(newTotalRevenue) {
          paperclipSales = (newTotalRevenue - getSecretRevenue()) / paperclipCost
          }

    }

    init(paperclipSales: Int){
        self.paperclipSales = paperclipSales
    }
    
    private func getSecretRevenue() -> Int {
        return 100
    }
        
    func printTotalRevenue() {
        print("Our total revenue this month is \(totalRevenue)")
        print("Paperclip Sales is \(paperclipSales)")
    }
}

var alphaOffice = Office(paperclipSales: 18)

// 3: Set the total revenue
alphaOffice.totalRevenue = 400

alphaOffice.printTotalRevenue()

