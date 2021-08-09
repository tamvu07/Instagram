//
//  ViewController.swift
//  Instagram
//
//  Created by Vu Minh Tam on 8/9/21.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        handleNotAuthenticared()
        
    }

    private func handleNotAuthenticared() {
        // Check auth status
        if Auth.auth().currentUser == nil {
            // show log in
            let loginVc = LoginViewController()
            loginVc.modalPresentationStyle = .fullScreen
            
            present(loginVc, animated: false)
        }
    }
}

