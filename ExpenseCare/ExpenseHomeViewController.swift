//
//  ExpenseHomeViewController.swift
//  ExpenseCare
//
//  Created by Shiva Ram Reddy on 14/06/20.
//  Copyright © 2020 Shiva Ram Reddy. All rights reserved.
//

import UIKit

class ExpenseHomeViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupNavigationBarButton()
    }
    
    private func setupNavigationBarButton() {
        
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addBarButtonTapped))
        navigationItem.rightBarButtonItems = [add]
    }
    
    @objc private func addBarButtonTapped() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "WalletViewController")
        self.present(vc, animated: true)
    }

}
