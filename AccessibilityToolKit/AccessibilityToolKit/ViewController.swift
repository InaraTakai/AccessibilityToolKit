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
        self.navigationController!.navigationBar.prefersLargeTitles = true
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
            self.dayCardView.accessibilityLabel = NSLocalizedString("A carta do dia é a número \(index) de título \(title)", comment: "")
        }
    }
    
    func setAccessibilityButtons() {
        self.operableView.isAccessibilityElement = true
        self.robustView.isAccessibilityElement = true
        self.noticiableView.isAccessibilityElement = true
        self.understandableView.isAccessibilityElement = true
        
        let voicePrinciple = NSLocalizedString("Abrir as cartas do princípio ", comment: "")
        
        self.operableView.accessibilityLabel = voicePrinciple + NSLocalizedString("Operável", comment: "")
        self.robustView.accessibilityLabel = voicePrinciple + NSLocalizedString("Robusto", comment: "")
        self.noticiableView.accessibilityLabel = voicePrinciple + NSLocalizedString("Perceptível", comment: "")
        self.understandableView.accessibilityLabel = voicePrinciple + NSLocalizedString("Compreensível", comment: "")
        
        self.aboutView.isAccessibilityElement = true
        self.aboutView.accessibilityLabel = NSLocalizedString("Descobrir mais sobre o aplicativo", comment: "")
    }
    
    func adjustStack() {
        if self.traitCollection.preferredContentSizeCategory > .extraLarge {
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
    
    @IBAction func btnRandom(_ sender: Any) {
        
        print(allCards.randomElement())
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueRandom" {
            if let nav = segue.destination as? UINavigationController {
                if let card = nav.viewControllers[0] as? CardViewController {
                    card.titleTest = "teste"
                }
            }
        }else if segue.identifier == "segueNoticeable"{
            if let list = segue.destination as? ListTableViewController {
                list.backColor = UIColor(named: "ToolKitRed")
                list.titleList = NSLocalizedString("Perceptível", comment: "Princípio de acessibilidade")
            }
        }else if segue.identifier == "segueOperable"{
            if let list = segue.destination as? ListTableViewController {
                list.backColor = UIColor(named: "ToolKitBlue")
                list.titleList = NSLocalizedString("Operável", comment: "Princípio de acessibilidade")
            }
        }else if segue.identifier == "segueUnderstandable"{
            if let list = segue.destination as? ListTableViewController {
                list.backColor = UIColor(named: "ToolKitYellow")
                list.titleList = NSLocalizedString("Compreensível", comment: "Princípio de acessibilidade")
            }
        }else if segue.identifier == "segueRobust"{
            if let list = segue.destination as? ListTableViewController {
                list.backColor = UIColor(named: "ToolKitGreen")
                list.titleList = NSLocalizedString("Robusto", comment: "Princípio de acessibilidade")
            }
        }
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

