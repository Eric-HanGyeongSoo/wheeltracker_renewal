//
//  DetailViewController.swift
//  wheelTracker
//
//  Created by gaeun on 2021/04/08.
//

import UIKit

class DetailViewController: UIViewController{
    @IBOutlet weak var nameLabel: UILabel!
    var selectedUser: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        nameLabel.text = selectedUser.name
            
    }
    
    
}
