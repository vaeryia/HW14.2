//
//  FourthVC.swift
//  HW14NavigationApp
//
//  Created by Valeria Moyseychik on 21.08.23.
//

import UIKit

class FourthVC: UIViewController {

    var dataString: String?
    
@IBOutlet var labelText: UILabel!
    
override func viewDidLoad() {
    super.viewDidLoad()
    labelText.text = dataString
}
    
@IBAction func backAction(_ sender: UIButton) {
    performSegue(withIdentifier: "unwindToFirstVC", sender: nil)
    
}

}
