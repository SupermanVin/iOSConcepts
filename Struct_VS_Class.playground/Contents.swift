//https://www.youtube.com/watch?v=3zSuAkIt9jY


class Customer {
    var name:String = ""
    init(name:String) {
        self.name = name
    }
}

struct Purchase {
    
    let customer:Customer
}

var customer = Customer(name: "Vinod")
var purchase = Purchase(customer: customer)
customer.name = "Anand"

print(purchase.customer.name)

struct Astruct {
    let aClosure:() -> Int
}

func immutableFuncation() -> Int {
    return 1
}

var i = 0
func nastyFuncation() -> Int {
    i += 1
    return i
}

let myStruct = Astruct(aClosure: immutableFuncation)
//print(myStruct.aClosure())
//print(myStruct.aClosure())

//Diffrent condition
struct User {
    let userName:String
    let passWord:String
    let authenticator:UserAuthenticator
    
    func authenticate() -> Bool {
        return authenticator.authenticate(user: self)
    }
}

protocol UserAuthenticator {
    func authenticate(user:User) -> Bool
}
