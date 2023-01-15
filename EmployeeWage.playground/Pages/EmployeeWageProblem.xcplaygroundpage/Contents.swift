import UIKit

let employeePresentFullTime : Int = 1
let employeePresentParttime : Int = 2
let totalWorkinhHrs : Int = 100
let totalworkingdays : Int = 20
let wagesPerHrs : Int = 20
let partTimeHrs : Int = 4
let fullTimeHrs : Int = 8
var dailywage : Int = 0
var totalWage : Int = 0
var workingHrs : Int = 0
var days : Int = 1
let check = Int.random(in: 1..<4)
while workingHrs < totalWorkinhHrs  {
    if check == employeePresentFullTime {
        print("Employee working full time")
        dailywage = fullTimeHrs * wagesPerHrs
        workingHrs += fullTimeHrs
    } else if check == employeePresentParttime {

        dailywage = partTimeHrs * wagesPerHrs
        workingHrs += partTimeHrs
        print("Employee working part time")

    } else {
        print("There is no working epmloyee ")
    }
    totalWage += dailywage
    days += 1
}
print("Daily wages is  \(dailywage)")
print("total working hrs \(workingHrs)")
print("total wages are \(totalWage)")


//while workingHrs < totalWorkinhHrs && days <= totalworkingdays{
//
//    switch check {
//    case employeePresentFullTime:
//        print("Employee working full time")
//        dailywage = fullTimeHrs * wagesPerHrs
//        totalWage += dailywage
//        print("Daily wgaes is \(dailywage) and Total wages is : \(totalWage)")
//
//    case employeePresentParttime :
//        print("Employee working part time")
//        dailywage = partTimeHrs * wagesPerHrs
//        totalWage += dailywage
//        print(dailywage, totalWage)
//    default:
//        print("Employee not present")
//        dailywage = workingHrs * wagesPerHrs
//        print(dailywage)
//        break
//    }
//}
