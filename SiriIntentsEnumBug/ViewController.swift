//
//  ViewController.swift
//  SiriIntentsEnumBug
//
//  Created by Jason Ji on 6/18/18.
//  Copyright © 2018 Jason Ji. All rights reserved.
//

import UIKit
import Intents

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func donateIntent(_ sender: Any) {
        let intent = FooIntentIntent()
        intent.enumParameter = .a
        let interaction = INInteraction(intent: intent, response: nil)
        
        interaction.donate { (error) in
            if let error = error {
                print(error.localizedDescription)
            }
            else {
                print("Donation complete")
            }
        }
        
        let shortcut = INShortcut(intent: intent)
        let relevantShortcut = INRelevantShortcut(shortcut: shortcut!)
        
    }
    
}

