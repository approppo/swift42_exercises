import XCTest

// tag::class[]
class ShoppingCart {
    private var products = [Product]()
    
    var price : Float {
        var total : Float = 0.0
        for product in products {
            total += product.price
        }
        return total
    }

    func add(product: Product) -> ShoppingCart {
        products.append(product)
        return self
    }
}
// end::class[]


// tag::init[]
class Product {
    var price : Float = 0.0

    init(price: Float) {
        self.price = price
    }
}

class Cheese : Product {
    init() {
        super.init(price: 12.5)
    }
}

class Apple : Product {
    init() {
        super.init(price: 5.0)
    }
}

class Tea : Product {
    init() {
        super.init(price: 20.0)
    }
}
// end::init[]


// tag::test[]
class ShoppingCartTests : XCTestCase {
    func testPrice() {
        let cart = ShoppingCart()
        let cheese = Cheese()
        let apple = Apple()
        let tea = Tea()
        cart.add(product: cheese)
            .add(product: apple)
            .add(product: tea)
        XCTAssertEqual(37.5, cart.price, "The final price is 37.5")
    }
}
// end::test[]

ShoppingCartTests.defaultTestSuite.run()

