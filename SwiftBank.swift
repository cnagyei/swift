// Write your code below 🏦

// Bank struct
struct SwiftBank {
  private let password: String

  init(password: String, initialDeposit: Double) {
    self.password = password
    
    makeDeposit(ofAmount: initialDeposit)
  }

// Check password
  private func isValid(_ enteredPassword: String) -> Bool {
    if enteredPassword == self.password {
      return true
    } else {
      return false
    }
  }
 
  private var balance: Double = 0 {
    // Property observer to monitor balance
    didSet {
      if balance < 100 {
        displayLowBalanceMessage()
      }
    }
  }
  // Bonus rate
  static let depositBonusRate = 0.01

// Bonus
  private func finalDepositWithBonus(fromInitialDeposit deposit: Double) -> Double {
    return deposit + (deposit * SwiftBank.depositBonusRate)
  }

// Make deposit
  mutating func makeDeposit(ofAmount depositAmount: Double) {
    let depositWithBonus = finalDepositWithBonus(fromInitialDeposit: depositAmount)

    print("Making a deposit of $\(depositAmount) with a bonus rate. The final amount deposited is \(depositWithBonus)")

    // Update bank balance
    balance += depositWithBonus
  }

// Check balance
  func displayBalance(usingPassword password: String) {
    if isValid(password) == false {
      print("Error: Invalid password. Cannot retrieve balance")
      return
    } else {
      print("Your current balance is $\(balance)")
    }
  }

// Make withdrawals
  mutating func makeWithdrawal(ofAmount withdrawalAmount: Double, password: String) {
    if isValid(password) == false {
      print("Error: Invalid password. Cannot make withdrawal.")
    } else {
      balance -= withdrawalAmount
      print("Making a $\(withdrawalAmount) withdrawal")
    }
  }

   // Low balance alert
  func displayLowBalanceMessage() {
    print("Alert: Your balance is under $100")
  }
}

// Create instance of SwiftBank
var myAccount = SwiftBank(password: "calbert", initialDeposit: 500)
print("========")

myAccount.makeDeposit(ofAmount: 500)
print("========")
myAccount.displayBalance(usingPassword: "calbert")
print("========")
myAccount.makeDeposit(ofAmount: 1000)
print("========")
myAccount.displayBalance(usingPassword: "calbert")
print("========")
myAccount.makeWithdrawal(ofAmount: 600, password: "calbert")
print("========")
myAccount.displayBalance(usingPassword: "calbert")


