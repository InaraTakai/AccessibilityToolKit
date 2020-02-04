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
    @IBOutlet weak var noticiableView: UIView!
    @IBOutlet weak var operableView: UIView!
    @IBOutlet weak var understandableView: UIView!
    @IBOutlet weak var robustView: UIView!
    @IBOutlet weak var aboutView: UIView!
    
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
        self.setAccessibilityButtons()
        
//        self.navigationController!.navigationBar.prefersLargeTitles = true
//
//        self.title = "Acessibilidade\nToolkit"
//
//        self.navigationController?.navigationBar.largeContentTitle = title
    }

    func setDayCard() {
        //set border of day card
        self.dayCardView.layer.borderWidth = 3
        self.dayCardView.layer.borderColor = UIColor(named: "ToolKitRed")?.cgColor
        
        //set accessibility of day card
        self.dayCardView.isAccessibilityElement = true
        if let index = self.dayIndexLabel?.text, let title = self.dayTitleLabel.text {
            self.dayCardView.accessibilityLabel = "A carta do dia é a número \(index) de título \(title)"
        }
    }
    
    func setAccessibilityButtons() {
        self.operableView.isAccessibilityElement = true
        self.robustView.isAccessibilityElement = true
        self.noticiableView.isAccessibilityElement = true
        self.understandableView.isAccessibilityElement = true
        
        let voicePrinciple = "Abrir as cartas do princípio "
        
        self.operableView.accessibilityLabel = voicePrinciple + "Operável"
        self.robustView.accessibilityLabel = voicePrinciple + "Robusto"
        self.noticiableView.accessibilityLabel = voicePrinciple + "Perceptível"
        self.understandableView.accessibilityLabel = voicePrinciple + "Compreensível"
        
        self.aboutView.isAccessibilityElement = true
        self.aboutView.accessibilityLabel = "Descobrir mais sobre o aplicativo"
    }
    
    func adjustStack() {
        print(self.perceptibleLabel.font.fontDescriptor.pointSize)
        if self.perceptibleLabel.font.fontDescriptor.pointSize > 20 {
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
    
    @IBAction func clique(_ sender: UIButton) {
        print(sender.superview?.accessibilityLabel)
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

