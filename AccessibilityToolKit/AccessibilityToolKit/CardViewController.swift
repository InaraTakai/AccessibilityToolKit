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
       
       
       override func viewDidLoad() {
           super.viewDidLoad()
    
           self.setAccessibilityCard()
           // Do any additional setup after loading the view.
       }
    
    @IBAction func cancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
