//
//  camaraViewController.swift
//  evolution
//
//  Created by user on 08/03/21.
//  Copyright © 2021 Arturo Lopez. All rights reserved.
//

import UIKit

class camaraViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let imagePicker: UIImagePickerController = UIImagePickerController()
    
    @IBOutlet weak var imagen: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
    }
    
    @IBAction func hacerfotoAction(_ sender: AnyObject){
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            //if UIImagePickerController.availableCaptureModes(for: .rear) != nil {
                imagePicker.allowsEditing = false
                imagePicker.sourceType = .camera
                imagePicker.cameraCaptureMode = .photo
                
                present(imagePicker, animated: true, completion: nil)
            //}
        }
    }
    
    @IBAction func seleccionarfotoAction(_ sender: AnyObject){
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            imagePicker.allowsEditing = false
            imagePicker.sourceType = .photoLibrary
            
            present(imagePicker, animated: true, completion: nil)
        }
    }
        //imagePicker.dismiss(animated: true, completion: nil)
    }
