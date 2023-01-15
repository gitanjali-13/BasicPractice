//
//  ViewController.swift
//  Navigations
//
//  Created by Admin on 30/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnDetailVC(_ sender: UIButton) {
        let detailvc = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        self.navigationController?.pushViewController(detailvc, animated: true)
        
    }
}

