//
//  DetailViewController.swift
//  Navigations
//
//  Created by Admin on 30/12/22.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnHomeClick(_ sender: UIButton) {
//        let VC  = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//        self.navigationController?.pushViewController(VC, animated: true)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func btnthirdvcClick(_ sender: UIButton) {
        
        let thirdVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }
}
