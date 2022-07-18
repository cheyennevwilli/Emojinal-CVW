//
//  SecondViewController.swift
//  Emojinal-CVW
//
//  Created by Jessi Czerski  on 7/18/22.
//  Copyright © 2022 Cheyenne Vlymen-Williams. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func jessiButtonTapped(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Testing", message: "Can you see this Jessi?", preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "Yes", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
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
