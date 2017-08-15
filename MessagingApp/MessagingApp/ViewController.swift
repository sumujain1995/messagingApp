//
//  ViewController.swift
//  MessagingApp
//
//  Created by Sumeet Jain on 15/08/17.
//  Copyright © 2017 Sumeet Jain. All rights reserved.
//

import UIKit

class ViewController: UITableViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(logoutClicked))
    }
    
    func logoutClicked()
    {
        self.present(LoginViewController(), animated: true, completion: nil)
    }

}

