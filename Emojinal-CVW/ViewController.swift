//
//  ViewController.swift
//  Emojinal-CVW
//
//  Created by Cheyenne Vlymen-Williams on 6/16/19.
//  Copyright © 2019 Cheyenne Vlymen-Williams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        // in as much detail as possible
        // pseudo-code the things that need to happen
        // when a user clicks an emoji button

        let alertController = UIAlertController(title: "Got it!", message: "\(emojis[selectedEmotion!]!)", preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)

    }
    
    let emojis = ["😝": "You Feel Silly", "🙃": "You Feel Fake Fine"]
}

