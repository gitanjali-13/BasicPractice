import UIKit

/* var use to make variable */
var message = "Welcome to swift programming" //type String
print(message)
var number = 3 //type Int
print(number)

/*use to make constant*/
let label = "the width is "
let width = 94
/* explicitly convering Int type into string type */
let widthlabel = label + String(width)
let explicitConstant : Float = 22.5
print("\(widthlabel), and float value \(explicitConstant)")

/*  use of optional  */
let possiblenumber = "123"
let conert = Int(possiblenumber) // conversion possible

let name = "Hello"
let convertName = Int(name)  //rturns nil value because hello doent have any valid vlue

var servercode : Int? = 404
servercode = nil
var survayanswr : String? //automaticlly set to nil

/*       optional binding     */
if let number = Int(name) {
 print("the string has posible value of \(number)")
} else {
    print("String havnt ocnverted")
}





