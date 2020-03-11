//
//  TutorialViewController.swift
//  AccessibilityToolKit
//
//  Created by Gabriel Ferreira on 06/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController {
    
    @IBOutlet weak var titleTutorial: UILabel!
    
    @IBOutlet weak var contentTutorial: UILabel!
    
    @IBOutlet weak var startBtn: UIButton!
    
    var defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.titleTutorial.text = NSLocalizedString("Diretrizes na sua mão", comment: "")
        self.contentTutorial.text = NSLocalizedString("Esse aplicativo foi criado com intuito de simplificar e facilitar o acesso as diretrizes da WCAG. Sinta-se a vontade para utilizá-lo!", comment: "")
        self.startBtn.setTitle(NSLocalizedString("Entrar", comment: ""), for: .normal)
        
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
