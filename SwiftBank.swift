// Write your code below 🏦

// Bank struct
struct SwiftBank {

  // Bonus rate type property
  static let depositBonusRate = 0.01

  // Password property
  private let password: String

  // Initializer
  init(password: String, initialDeposit: Double) {
    self.password = password
    
    // Make initial deposit
    makeDeposit(ofAmount: initialDeposit)
  }

// Password verifier
  private func isValid(_ enteredPassword: String) -> Bool {
    return enteredPassword == self.password
  }
 
  // Bank balance property
  private var balance: Double = 0 {
    
    // Property observer to monitor balance
    didSet {
      if balance < 100 {
        displayLowBalanceMessage()
      }
    }
  }

// Bonus calculator method
  private func finalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
    return deposit + (deposit * SwiftBank.depositBonusRate)
  }

// Make deposit method
  mutating func makeDeposit(ofAmount depositAmount: Double) {
    let depositWithBonus = finalDepositWithBonus(fromInitialDeposit: depositAmount)
    print("Making a deposit of $\(depositAmount) with a bonus rate. The final amount deposited is \(depositWithBonus)")

    // Update bank balance
    self.balance += depositWithBonus
  }

// Check balance method
  func displayBalance(usingPassword password: String) {
    if !isValid(password) {
      print("Error: Invalid password. Cannot retrieve balance")
      return
    }
    print("Your current balance is $\(self.balance)")
  }

// Make withdrawals method
  mutating func makeWithdrawal(ofAmount withdrawalAmount: Double, password: String) {
    if !isValid(password) {
      print("Error: Invalid password. Cannot make withdrawal.")
      return
    }
    self.balance -= withdrawalAmount
    print("Making a $\(withdrawalAmount) withdrawal")
  }

   // Low balance alert method
  func displayLowBalanceMessage() {
    print("Alert: Your balance is under $100")
  }
}

// Create instance of SwiftBank
var myAccount = SwiftBank(password: "calbert", initialDeposit: 500)
myAccount.makeDeposit(ofAmount: 500)
myAccount.displayBalance(usingPassword: "calbert")
myAccount.makeDeposit(ofAmount: 1000)
myAccount.displayBalance(usingPassword: "calbert")
myAccount.makeWithdrawal(ofAmount: 600, password: "calbert")
myAccount.displayBalance(usingPassword: "calbert")


