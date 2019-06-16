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

        let number = Int.random(in: 0...2)
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[number]
            // here I want to extract the word that goes with my emoji
            // then find that word in the dictionary
            // get it's value (array)
            // and access the first element
        let alertController = UIAlertController(title: "Got it!", message: "\(emojiMessage!)", preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)

    }
    
    let emojis = ["😝": "You Feel Silly", "🙃": "You Feel Fake Fine"]
    
    var customMessages = ["You Feel Silly": ["Do a little dance", "Spead a little love", "Get down tonight"], "You Feel Fake Fine":["You're almost through the day", "Get something to eat", "Remind yourself why you're here"]]

}

