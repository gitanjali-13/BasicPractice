import UIKit
print("------------Class example -----------------------------------")
class Developer {
    var name : String                   //class is reference type
    var age  : Int
    var salary : Int
    var location : String
    
    init(name : String, age : Int, salary : Int, location : String) {
        self.name = name
        self.age = age
        self.salary = salary
        self.location = location
    }
    
    func display() {
        print("Employee name is : \(name) , \nemployee age is \(age), \nemployee salary is \(salary), \nemployee from ")
    }
}
let developer = Developer(name : "allen", age : 36, salary: 26000,location: "USA")
developer.display()             // function call


print("------------------ Struct example -------------------------")

struct Emp {
    var name : String
    var age : Int
    var salary : Int
    let companyName : String = "Capgemini" 
    
    func display(){
        print("Employee name is \(name) ,\nage is \(age) , \nsalary is \(salary),\ncompany name \(companyName)" )
    }
}
let emp = Emp(name: "Bella", age: 29, salary: 280000)
emp.display()
