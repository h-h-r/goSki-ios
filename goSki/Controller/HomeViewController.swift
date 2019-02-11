//
//  HomeViewController.swift
//  goSki
//
//  Created by Haoran Hu on 2/11/19.
//  Copyright © 2019 hhr. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.delegate = self as? UINavigationControllerDelegate
//        self.navigationController?.isNavigationBarHidden = true
        
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "back", style: .plain, target: nil, action: nil)
//        let item = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
//        self.navigationItem.backBarButtonItem = item
//        self.navigationController?.navigationBar.topItem?.title = ""; 
        // Do any additional setup after loading the view.
//        self.navigationItem.backBarButtonItem?.title = ""
//        navigationItem.backBarButtonItem = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        do{
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
        }catch{
            print("error , a problem signing out")
        }
    }
    
}
