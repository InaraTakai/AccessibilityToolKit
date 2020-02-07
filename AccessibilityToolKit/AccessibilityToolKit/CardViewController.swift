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
    
    var card : Card?
    
    func setAccessibilityCard() {
        self.stackTitleLevel.isAccessibilityElement = true
        self.stackTitleCode.isAccessibilityElement = true
        self.guideline.isAccessibilityElement = true
        self.shortDescription.isAccessibilityElement = true
        self.link.isAccessibilityElement = true
        
        self.stackTitleLevel.accessibilityLabel = "Carta do princípio " + (self.card?.title.name())! + "com nível de conformidade" + (self.card?.level.voiceOver())!
        self.guideline.accessibilityLabel = "Recomendação da carta" + (self.card?.guideline)!
        self.stackTitleCode.accessibilityLabel = "Critério de sucesso número" + (self.card?.code)! + (self.card?.criterion)!
        self.shortDescription.accessibilityLabel = (self.card?.description)!
        self.link.accessibilityLabel = "Liink para consultar a diretriz completa"
        
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
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func adjustStack() {
        if self.traitCollection.preferredContentSizeCategory > .extraLarge {
            self.stackTitleCode.axis = .vertical
            self.stackTitleLevel.axis = .vertical
//        }else if self.traitCollection.preferredContentSizeCategory > .extraLarge {
//            self.stackTitleLevel.axis = .horizontal
//            self.stackTitleCode.axis = .horizontal
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
