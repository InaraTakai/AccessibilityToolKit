//
//  CardViewController.swift
//  AccessibilityToolKit
//
//  Created by Gabriel Ferreira on 04/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    
    @IBOutlet weak var stackTitleLevel: UIStackView!
    @IBOutlet weak var guideline: UILabel!
    @IBOutlet weak var stackTitleCode: UIStackView!
    @IBOutlet weak var shortDescription: UILabel!
    @IBOutlet weak var link: UIButton!
    @IBOutlet weak var principleLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var criterionLabel: UILabel!
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var symbolImage: UIImageView!
    @IBOutlet weak var linkLabel: UIButton!
    @IBOutlet weak var exampleTitle: UILabel!
    @IBOutlet weak var exampleImage: UIImageView!
    
    var card : Card?
    
    
    func setAccessibilityCard() {
        self.stackTitleLevel.isAccessibilityElement = true
        self.stackTitleCode.isAccessibilityElement = true
        self.guideline.isAccessibilityElement = true
        self.shortDescription.isAccessibilityElement = true
        self.link.isAccessibilityElement = true
        if self.card?.image == nil{
            self.exampleImage.isAccessibilityElement = false
        }else{
            self.exampleImage.isAccessibilityElement = true
            self.exampleImage.accessibilityLabel = NSLocalizedString("Exemplo visual do critério de sucesso", comment: "")
        }
        
        
        let myStringTitleLevel = String(format: NSLocalizedString("Carta do princípio %@ com nível de conformidade %@", comment: ""), (self.card?.title.name())!, (self.card?.level.voiceOver())!)
        let myStringGuideline = String(format: NSLocalizedString("Recomendação da carta %@", comment: ""), (self.card?.guideline)!)
        let myStringTitleCode = String(format: NSLocalizedString("Critério de sucesso número %@ %@", comment: ""), (self.card?.code)!, (self.card?.criterion)!)
        self.stackTitleLevel.accessibilityLabel = myStringTitleLevel
        self.guideline.accessibilityLabel = myStringGuideline
        self.stackTitleCode.accessibilityLabel = myStringTitleCode
        self.shortDescription.accessibilityLabel = (self.card?.description)!
        self.link.accessibilityLabel = NSLocalizedString("Link para consultar a diretriz completa", comment: "")
    
    }
    
    func setCard(){
        self.colorView.backgroundColor = self.card?.title.color()
        self.symbolImage.image = self.card?.title.symbol()
        self.principleLabel.text = self.card?.title.name()
        self.levelLabel.text = self.card?.level.level()
        self.guideline.text = self.card?.guideline
        self.criterionLabel.text = self.card?.criterion
        self.codeLabel.text = self.card?.code
        self.shortDescription.text = self.card?.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setAccessibilityCard()
        self.setCard()
        self.linkLabel.setTitle(NSLocalizedString("link para diretriz completa", comment: ""), for: .normal)
        if self.card?.image == nil{
            self.exampleTitle.text = ""
        }else{
            self.exampleTitle.text = NSLocalizedString("Exemplo", comment: "")
            self.exampleImage.image = UIImage(named: self.card!.image!)
        }
    }
    
    @IBAction func btnLink(_ sender: Any) {
        UIApplication.shared.open(URL(string: self.card!.link!)!)
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func adjustStack() {
        if self.traitCollection.preferredContentSizeCategory > .extraLarge {
            self.stackTitleCode.axis = .vertical
            self.stackTitleLevel.axis = .vertical
        }else{
            self.stackTitleCode.axis = .horizontal
            self.stackTitleLevel.axis = .horizontal
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

