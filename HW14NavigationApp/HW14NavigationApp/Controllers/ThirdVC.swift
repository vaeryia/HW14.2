//
//  ThirdVC.swift
//  HW14NavigationApp
//
//  Created by Valeria Moyseychik on 21.08.23.
//

import UIKit

class ThirdVC: UIViewController {
    
        var dataString: String?
        
    @IBOutlet var labelText: UILabel!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        labelText.text = dataString
    }
        
    @IBAction func backAction(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        //navigationController?.popToRootViewController(animated: true)
        //navigationController?.popToViewController(UIViewController, animated: true)
    }
        
}
    

