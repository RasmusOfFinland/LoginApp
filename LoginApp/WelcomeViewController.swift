//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Вячеслав Сорокин on 18.08.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var userNameForMassage: String!
    
    
    @IBOutlet weak var welcomeMassageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let _ = welcomeMassageLabel.text {
            welcomeMassageLabel.text! += userNameForMassage
        }
        
    }
    
  

    

}
