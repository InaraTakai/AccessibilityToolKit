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
    @IBOutlet weak var dayLevelLabel: UILabel!
    
    @IBOutlet weak var stackDay: UIStackView!
    @IBOutlet weak var stackUp: UIStackView!
    @IBOutlet weak var stackDown: UIStackView!
    @IBOutlet weak var perceptibleLabel: UILabel!
    
    @IBOutlet weak var dayCardLabel: UILabel!
    @IBOutlet weak var btnRandom: UIBarButtonItem!
    @IBOutlet weak var principleLabel: UILabel!
    @IBOutlet weak var robustLabel: UILabel!
    @IBOutlet weak var operableLabel: UILabel!
    @IBOutlet weak var noticeableLabel: UILabel!
    @IBOutlet weak var understandableLabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    
    var defaults = UserDefaults.standard
    
    var dayCard : Card?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setDayCard()
        self.setAccessibilityButtons()
        self.navigationController!.navigationBar.prefersLargeTitles = true
        self.dayCardLabel.text  = NSLocalizedString("Carta do Dia", comment: "")
        self.principleLabel.text  = NSLocalizedString("Princípios", comment: "")
        self.robustLabel.text  = NSLocalizedString("Robusto", comment: "")
        self.operableLabel.text  = NSLocalizedString("Operável", comment: "")
        self.noticeableLabel.text  = NSLocalizedString("Perceptível", comment: "")
        self.understandableLabel.text  = NSLocalizedString("Compreensível", comment: "")
        self.aboutLabel.text  = NSLocalizedString("Sobre o aplicativo", comment: "")
        self.btnRandom.title = NSLocalizedString("Sortear", comment: "")
    }

    func setDayCard() {
        //set card informations
        let date = defaults.string(forKey: "date")
        let currentDate = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        
        if date != nil && date == formatter.string(from: currentDate) {
            self.dayCard = allCards[defaults.integer(forKey: "card")]
        }else{
            self.defaults.set(formatter.string(from: currentDate), forKey: "date")
            let cardNumber = self.randomCardNumber()
            self.dayCard = allCards[cardNumber]
            self.defaults.set(cardNumber, forKey: "card")
        }
        
        self.dayIndexLabel.text = self.dayCard?.code
        self.dayTitleLabel.text = self.dayCard?.guideline
//        self.dayLevelLabel.text = self.dayCard?.level

        //set border of day card
        self.dayCardView.layer.borderWidth = 3
        self.dayCardView.layer.borderColor = self.dayCard?.title.color()?.cgColor

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
    
    func randomCard() -> Card {
        return allCards.randomElement() ?? allCards[0]
    }
    
    func randomCardNumber() -> Int {
        return Int.random(in: 0 ... 77)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueRandom" {
            if let nav = segue.destination as? UINavigationController {
                if let card = nav.viewControllers[0] as? CardViewController {
                    card.card = self.randomCard()
                }
            }
        }else if segue.identifier == "segueDayCard" {
            if let nav = segue.destination as? UINavigationController {
                if let card = nav.viewControllers[0] as? CardViewController {
                    card.card = self.dayCard
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
    
    func adjustStack() {
        if self.traitCollection.preferredContentSizeCategory > .extraExtraLarge {
            self.stackUp.axis = .vertical
            self.stackDown.axis = .vertical
            self.stackDay.axis = .vertical
        }else if self.traitCollection.preferredContentSizeCategory > .extraLarge {
            self.stackUp.axis = .horizontal
            self.stackDown.axis = .horizontal
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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "ToolKitBackOpposite") ?? UIColor.white]
        
        self.navigationController?.navigationBar.backItem?.backBarButtonItem?.tintColor = .black
    }
}

