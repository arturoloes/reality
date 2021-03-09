//
//  homeViewController.swift
//  evolution
//
//  Created by user on 07/03/21.
//  Copyright © 2021 Arturo Lopez. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    var user = User()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    func setupUI() {
        let logoutButton = UIBarButtonItem(title: "Logout", style: .done, target: self, action: #selector(logout))
        navigationItem.rightBarButtonItem = logoutButton
        navigationItem.title = "Home"
        
        nameLabel.text = user.name
        
    }
    
    @objc func logout(){
        let alert = UIAlertController(title: "Log Out", message: "¿Estas seguro de querer cerrar sesion?", preferredStyle: .actionSheet)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: {(actiom) in self.dismiss(animated: true, completion: nil)
            
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
}
