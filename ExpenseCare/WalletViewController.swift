//
//  WalletViewController.swift
//  ExpenseCare
//
//  Created by Shiva Ram Reddy on 14/06/20.
//  Copyright © 2020 Shiva Ram Reddy. All rights reserved.
//

import UIKit

class WalletViewController: UIViewController {

    @IBOutlet weak var walletView: UIView!
    
    @objc func viewTapped(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setupWalletView()
        addTapGesture()
    }
    
    private func setupWalletView() {
        
        walletView.layer.cornerRadius = 10
        walletView.layer.masksToBounds = true
    }
    
    private func addTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped))
        tapGesture.delegate = self
        self.view.addGestureRecognizer(tapGesture)
    }
}

extension WalletViewController: UIGestureRecognizerDelegate {
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        
        return touch.view != walletView
    }
}
