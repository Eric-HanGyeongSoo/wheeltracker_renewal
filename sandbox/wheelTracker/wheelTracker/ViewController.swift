//
//  ViewController.swift
//  wheelTracker
//
//  Created by gaeun on 2021/04/08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "chung_seg"{
            if let detailVC = segue.destination as? DetailViewController{
                detailVC.selectedUser = users[0]
                
            }
        }
        if segue.identifier == "ki_seg"{
            if let detailVC = segue.destination as? DetailViewController{
                detailVC.selectedUser = users[1]
                
            }
        }
        if segue.identifier == "army_seg"{
            if let detailVC = segue.destination as? DetailViewController{
                detailVC.selectedUser = users[2]
                
            }
        }
    }
    
    
    


}

