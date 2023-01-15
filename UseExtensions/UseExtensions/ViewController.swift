//
//  ViewController.swift
//  UseExtensions
//
//  Created by Admin on 05/01/23.
//

import UIKit
struct Person {
    let first : String
    let last : String
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let yogesh = Person(first: "gitanjali", last: "deshmukh")
//        print(gitanjali.last)
        var dict = [String:String]()
//        dict["first"] = "monika"// --if here we r not initialise these dict then by using nil coealsing print
//        dict["last"] = "rahul"  //              -default value
        let monika = Person(dictionary: dict)
        print(monika.first)
        print(monika.last)
        self.hideKeyboardTappedAround()
        
        let newString = "old string".replace(target: "old", withString: "new")
        print("newString")
    }
    
    @IBAction func btnClick(_ sender: UIButton) {
        self.popUpAlert(Title: "alert", message: "message alert", actionTitles: ["ok", "cancle"], actionStyle: [.default , .cancel], action: [
            { ok in
            print("press ok")
            },
            { cancle in
            print("press cancle")
            }
        ])
        
    }
}

// Extension

extension Person{
    
    init(dictionary: [String:String]) {
        self.first = dictionary["first"] ?? "gitanjali" // nil coleasing if we cannot assign value for dict then it will print bydefault value in the given dictionary that is gitanjali
        //means it will return value nil or print default value gitanjali
        self.last = dictionary["last"] ?? "deshmukh"
    }
}

extension String {
    
    func replace(target: String , withString: String) -> String {
        return self.replacingOccurrences(of: target, with: withString)
    }
}
