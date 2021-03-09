//
//  registroViewController.swift
//  evolution
//
//  Created by user on 08/03/21.
//  Copyright © 2021 Arturo Lopez. All rights reserved.
//

import UIKit

class registroViewController: UIViewController {
    @IBOutlet weak var acceptButton: UIButton!
    @IBOutlet weak var correoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }
    
    
    func setup(){
        navigationItem.title = "Signup"
        
        acceptButton.backgroundColor = UIColor.red
        acceptButton.setTitleColor(UIColor.white, for: .normal)
        acceptButton.layer.cornerRadius = 5.0
        
        correoTextField.becomeFirstResponder()
    }
    
    @IBAction func hideKeyboard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
}
