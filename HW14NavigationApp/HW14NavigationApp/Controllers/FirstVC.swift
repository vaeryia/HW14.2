//
//  FirstVC.swift
//  HW14NavigationApp
//
//  Created by Valeria Moyseychik on 21.08.23.
//

import UIKit

class FirstVC: UIViewController {


    @IBOutlet weak var labelText: UILabel!
    
    @IBAction func goToSecondVC(_ sender: UIButton) {
        performSegue(withIdentifier: "goToSecondVC", sender: "Hello from FirstVC")
    }
    
    
    @IBAction func goToThird(_ sender: UIButton) {
    let vc = ThirdVC(nibName: "ThirdVC", bundle: nil)
        vc.dataString = "Hello from FirstVC"
        vc.navigationItem.title = "XIB VC"
        navigationController?.pushViewController(vc, animated: true)
    }
    

    @IBAction func goToFourthWithoutSegue() {
    let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        guard let fourthVC = storyboard.instantiateViewController(withIdentifier: "FourthVC") as? FourthVC else { return }
        fourthVC.navigationItem.title = "Fourth  VC"
        fourthVC .dataString = "Hello from FirstVC"
//        navigationController?.pushViewController(fourthVC, animated: true)

    present(fourthVC, animated: true)
    }
    
    
    
    @IBAction func unwindToFirstVC(_ unwindSegue: UIStoryboardSegue) {
        if let fourthVC = unwindSegue.source as? FourthVC {
            labelText.text = fourthVC.dataString
        }
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSecondVC",
           let secondVC = segue.destination as? SecondVC,
           let dataString = sender as? String
        {
            secondVC.dataString = dataString
            secondVC.firstVC = self
        }
        else if segue.identifier == "goToFourthVC",
                let fourthVC = segue.destination as? FourthVC
        {
            fourthVC.dataString = "Hello from FirstVC"
        }
    }
}
