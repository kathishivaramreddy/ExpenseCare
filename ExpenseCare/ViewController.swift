//
//  ViewController.swift
//  ExpenseCare
//
//  Created by Shiva Ram Reddy on 13/06/20.
//  Copyright © 2020 Shiva Ram Reddy. All rights reserved.
//

import UIKit

import Firebase
import GoogleSignIn

class ViewController: UIViewController {
    
    
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func signInButtonTapped(_ sender: Any) {
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance().signIn()
    }
    
}

