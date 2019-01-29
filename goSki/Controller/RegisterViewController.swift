//
//  RegisterViewController.swift
//  goSki
//
//  Created by Haoran Hu on 1/28/19.
//  Copyright © 2019 hhr. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passWordTextField: UITextField!
    @IBOutlet weak var confirmPassWordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if passWordTextField.text != confirmPassWordTextField.text{
            print("Passwords entered are different.")
        }else{
            print("go register")
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passWordTextField.text!) {
                (authDataResult, error) in
                if error != nil{
                    print("!!! error", error!)
                }else{
                    print("registration successful!")
                }
            }
            
        }
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
