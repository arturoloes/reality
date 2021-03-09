//
//  ViewController.swift
//  evolution
//
//  Created by user on 07/03/21.
//  Copyright © 2021 Arturo Lopez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var userTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButtonUI: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    let userLog:String = "Arturo"
    let paswordLog:String = "12345"
    
    let user = User(name: "Arturo")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func pressesBegan() {
        loginButtonUI.setTitleColor(UIColor.white, for: .normal)
       loginButtonUI.backgroundColor = UIColor.red
        loginButtonUI.layer.cornerRadius = 5.0 // Es el border-radious de swift
        
        // Register Button
        registerButton.setTitleColor(UIColor.red, for: .normal)
        
        loginButtonUI.alpha = 0.0
        registerButton.alpha = 0.0
    }
    
    @IBAction func loginButton(_ sender: UIButton){
        if userTextField.text == userLog && passwordTextField.text == paswordLog {
            if let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "homeView") as? homeViewController{
                nextViewController.user = user
                let newNavigationController = UINavigationController(rootViewController: nextViewController)
                self.present(newNavigationController, animated: true, completion: nil)
            }
        }else{
            let alert = UIAlertController(title: "Error", message: "Usuario o contraseña incorrectos", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
            
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func hideKeyboard(_ sender: UITapGestureRecognizer){
        view.endEditing(true)
    }

}

