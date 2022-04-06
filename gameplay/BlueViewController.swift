//
//  BlueViewController.swift
//  gameplay
//
//  Created by angelina on 30.03.2022.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var testLabel: UILabel!
    var textForLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testLabel.text = textForLabel
    }
    
    @IBAction func goToGreenController(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "greenVC") as? GreenViewController{
            vc.textForLabel = "Text String"
            vc.title = "Зеленый"
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
