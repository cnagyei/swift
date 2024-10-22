// Write your code below

// Offer a suite of products
enum ProductType: String, CaseIterable {
  case aceRepository = "Ace Repository"
  case dealForcer = "Deal Forcer"
  case kadencePlanner = "Kadence Planner"
  case mailCannon = "Mail Cannon"

  // Print all available products
  func displayProductOfferings() {
    var countProduct = 0
    for _ in ProductType.allCases {
      countProduct += 1
    }
    
    print("There are \(countProduct) products:")
    
    for product in ProductType.allCases {
      print(product)
    }
  }
}

// Define product editions
enum Edition: String {
  case basic, premium, ultimate

  mutating func upgrade() {
    switch self {
      case .basic:
        self = .premium

      case .premium:
        self = .ultimate

      case .ultimate:
        print("Can't upgrade further")
    }
  }
}

// Deliver results
enum DeliveryMethod {
  case cloudDigital(isLifetime: Bool)
  case shipping(weight: Int)

  // Calculate shipping cost using computed property
  var shippingCost: Int {
    var finalShippingCost: Int = 0
    switch self {
      case .shipping(let weight):
        finalShippingCost = weight * 2
      
      case .cloudDigital(let isLifetime):
        if isLifetime {
          finalShippingCost = 0
        }
    }
    return finalShippingCost
  }
}

// Confirm orders
func sendOrderConfirmation(of productType: ProductType, in edition: Edition, by deliveryMethod: DeliveryMethod) {
  print("Thank you for purchasing the \(edition) edition of \(productType)")

  switch deliveryMethod {
    case .shipping:
      print("Your order will be shipped to you at the cost of $\(deliveryMethod.shippingCost)")

    case .cloudDigital(let isLifetime):
      if isLifetime {
        print("You have lifetime cloud access")
      } else {
        print("You can access your subscription information on the cloud")
      }
  }
}

// Signed, sealed, delivered
var myProduct = ProductType.aceRepository
myProduct.displayProductOfferings()

print("=============")

// Edition
var myEdition = Edition.basic
myEdition.upgrade()

// Delivery
var myDelivery = DeliveryMethod.shipping(weight: 30)

// Order Confirmation
sendOrderConfirmation(of: myProduct, in: myEdition, by: myDelivery)