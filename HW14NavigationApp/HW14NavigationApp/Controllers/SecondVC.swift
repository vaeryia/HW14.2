//
//  SecondVC.swift
//  HW14NavigationApp
//
//  Created by Valeria Moyseychik on 21.08.23.
//

import UIKit

class SecondVC: UIViewController {

    var dataString: String?
    
    weak var firstVC: FirstVC?
    
    @IBOutlet weak var labelText: UILabel!

    override func viewDidLoad() {
         super.viewDidLoad()
        labelText.text =  dataString 
    }
    @IBAction func closeAction(_ sender: UIButton) {
    }
}
