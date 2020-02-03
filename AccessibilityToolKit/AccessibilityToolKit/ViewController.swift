//
//  ViewController.swift
//  AccessibilityToolKit
//
//  Created by Inara Takashi on 31/01/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dayCardView: UIView!
    @IBOutlet weak var perceptibleButton: UIButton!
    @IBOutlet weak var operableButton: UIButton!
    @IBOutlet weak var understandableButton: UIButton!
    @IBOutlet weak var robustButton: UIButton!
    
    @IBOutlet weak var dayIndexLabel: UILabel!
    @IBOutlet weak var dayTitleLabel: UILabel!
    
    @IBOutlet weak var stackDay: UIStackView!
    @IBOutlet weak var stackUp: UIStackView!
    @IBOutlet weak var stackDown: UIStackView!
    @IBOutlet weak var perceptibleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.setDayCard()
        
//        self.navigationController!.navigationBar.prefersLargeTitles = true
//
//        self.title = "Acessibilidade\nToolkit"
//
//        self.navigationController?.navigationBar.largeContentTitle = title
    }

    func setDayCard() {
        self.dayCardView.layer.borderWidth = 3
        self.dayCardView.layer.borderColor = UIColor(named: "ToolKitRed")?.cgColor
        
        self.dayCardView.isAccessibilityElement = true
        if let index = self.dayIndexLabel?.text, let title = self.dayTitleLabel.text {
            self.dayCardView.accessibilityLabel = "A carta do dia é a número \(index) de título \(title)"
        }
    }
    
    func adjustStack() {
        if self.perceptibleLabel.frame.height > 23 {
            self.stackUp.axis = .vertical
            self.stackDown.axis = .vertical
            self.stackDay.axis = .vertical
        }else{
            self.stackUp.axis = .horizontal
            self.stackDown.axis = .horizontal
            self.stackDay.axis = .horizontal
        }
        
        self.view.setNeedsLayout()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.adjustStack()
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        self.adjustStack()
    }
}

