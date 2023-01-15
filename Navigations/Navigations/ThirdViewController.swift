//
//  ThirdViewController.swift
//  Navigations
//
//  Created by Admin on 30/12/22.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btndetailvc(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func btnHome(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
