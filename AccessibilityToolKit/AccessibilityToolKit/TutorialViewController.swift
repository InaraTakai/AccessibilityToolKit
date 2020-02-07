//
//  TutorialViewController.swift
//  AccessibilityToolKit
//
//  Created by Gabriel Ferreira on 06/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.jumpingTutorial()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.jumpingTutorial()
    }
    
    func jumpingTutorial() {
        let date = self.defaults.string(forKey: "date")
        
        if date != nil {
            self.performSegue(withIdentifier: "fromTutorial", sender: self)
        }
    }
}
