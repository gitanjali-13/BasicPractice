//
//  Extension+UIviewcontroller.swift
//  UseExtensions
//
//  Created by Admin on 05/01/23.
//

import Foundation
import UIKit

extension UIViewController {
    
    func popUpAlert(Title: String, message: String, actionTitles: [String], actionStyle: [UIAlertAction.Style], action: [((UIAlertAction) -> Void)]) {
        let alert = UIAlertController(title: title , message: message, preferredStyle: .alert)
        for(index,title) in actionTitles.enumerated() {
            let action = UIAlertAction(title: title, style: .default, handler: action[index])
            alert.addAction(action)
        }
        self.present(alert, animated: true, completion: nil)
    }
    
    func hideKeyboardTappedAround() {
        let tap :UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismisskeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismisskeyboard() {
        view.endEditing(true)
    }
    
}
