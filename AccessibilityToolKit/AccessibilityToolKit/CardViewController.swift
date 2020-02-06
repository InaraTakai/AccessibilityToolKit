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
    
    var card : Card?
    var titleTest: String?
    var principleTitle = "operável"
    var level = "baixo"
    var criterionTitle = "conteúdo não textual"
    var code = "1.1.1"
    var diretriz = "Alternativas em texto"
    var conteudo = "Todo conteúdo “não textual” deve trazer uma alternativa em texto para identificar o conteúdo."
    
    
    func setAccessibilityCard() {
        self.stackTitleLevel.isAccessibilityElement = true
        self.stackTitleCode.isAccessibilityElement = true
        self.guideline.isAccessibilityElement = true
        self.shortDescription.isAccessibilityElement = true
        self.link.isAccessibilityElement = true
        
        self.stackTitleLevel.accessibilityLabel = "Carta do princípio " + principleTitle + "com nível de conformidade" + level
        self.guideline.accessibilityLabel = "Recomendação da carta" + diretriz
        self.stackTitleCode.accessibilityLabel = "Critério de sucesso número" + code + criterionTitle
        self.shortDescription.accessibilityLabel = conteudo
        self.link.accessibilityLabel = "Liink para consultar a diretriz completa"
        
    }
    
    func setCard(){
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setAccessibilityCard()
        
        card = allCards[0]
        
        principleLabel.text = card?.title.name()
        levelLabel.text = card?.level.level()
        guideline.text = card?.guideline
        criterionLabel.text = card?.criterion
        codeLabel.text = card?.code
        shortDescription.text = card?.description
    
    }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
