//
//  ViewController.swift
//  MidTerm_MADF2017
//
//  Created by moxDroid on 2017-10-20.
//  Copyright © 2017 moxDroid. All rights reserved.
//  Student ID :
//  Student Name :

import UIKit

class LoginViewController : UIViewController {

    @IBOutlet weak var txtUserEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginClick(_ sender: UIButton) {
        
        if(txtUserEmail.text == "admin@gmail.com" && txtPassword.text == "admin@123")
        {
            let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let empViewController = storyBoard.instantiateViewController(withIdentifier: "studentEntryScreen") as! StudentEntryViewController
            self.present(empViewController, animated: true, completion: nil)
        }
        else{
            let alertController = UIAlertController(title: "Login", message: "Invalid User ID/Password. Try Again..", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(okAction)
            
             self.present(alertController, animated: true, completion: nil)
        }
    }
}

