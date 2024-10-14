struct Office {    
    let paperclipCost = 10

    // Write your code below 💼
    static var paperclipSalesRecord: Int = 0


    private var paperclipSales: Int  {
        willSet {
            if newValue > Office.paperclipSalesRecord {
              Office.paperclipSalesRecord = newValue
            }
            print("We adjusted the sales to \(newValue) paperclips")
        }
        didSet {
            print("Originally we sold \(oldValue) paperclips")
        }
    }
    
    var totalRevenue : Int {
        get {
            return (paperclipSales * paperclipCost) + getSecretRevenue()
        }
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
    }
    
}

var alphaOffice = Office(paperclipSales: 18)
alphaOffice.totalRevenue = 400
alphaOffice.printTotalRevenue()
print(Office.paperclipSalesRecord)
