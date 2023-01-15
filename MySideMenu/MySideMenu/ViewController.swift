//
//  ViewController.swift
//  MySideMenu
//
//  Created by Admin on 12/01/23.
//

import UIKit
import SideMenu

class ViewController: UIViewController , MenuControllerDelegate {
    
//    func didSelectMenuItem(named: String) {
//        <#code#>
//    }
    

    private var sideMenu: SideMenuNavigationController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let menu = MenuController(with:["Home","Info","Setting"])
        
            //menu.delegate = self
        menu.delegates = self
        
        sideMenu = SideMenuNavigationController(rootViewController: menu)
        //sideMenu.delegate = self
        //sideMenu?.delegate = self
        sideMenu?.leftSide = true
        SideMenuManager.default.leftMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: view)
        
    }

    @IBAction func tapMenuButton () {
        present(sideMenu!, animated: true)
    }
    
    func didSelectMenuItem(named: String) {
        
        sideMenu?.dismiss(animated: true,completion: { [weak self] in
            
//            if let named == "Home"{
//
//
//            }else if named = "Info"{
//
//            } else if named = "Settings"{
//                self?.view.backgroundColor = .green
//            }
        })
    }
    
}

protocol MenuControllerDelegate {
    
    func didSelectMenuItem(named: String)
    
}
class MenuController: UITableViewController{
    
    var delegates: MenuControllerDelegate?
        
    
    private let menuItem : [String]
    private let color = UIColor(red: 33/255.0, green: 33/255.0, blue: 33/255.0, alpha: 1)
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
    
    init(with menuItem: [String]) {
        self.menuItem = menuItem
        super.init(nibName: nil, bundle: nil)
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.backgroundColor = color
            view.backgroundColor = color
        }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItem.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = menuItem[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = .clear
        cell.contentView.backgroundColor = color
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedItem = menuItem[indexPath.row]
        delegates?.didSelectMenuItem(named: selectedItem)
        
        
    }
    
    
}

