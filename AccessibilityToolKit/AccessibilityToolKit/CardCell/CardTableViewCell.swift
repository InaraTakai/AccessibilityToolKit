//
//  CardTableViewCell.swift
//  AccessibilityToolKit
//
//  Created by Gabriel Ferreira on 31/01/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    
    var levelVoiceOver: Level?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.adjustStack()
    }
    
    override func layoutSubviews() {
        self.setAccessibilityCard()
    }
    
    func setAccessibilityCard() {
        self.isAccessibilityElement = true
        if let index = self.indexLabel?.text, let title = self.titleLabel.text {
            self.accessibilityLabel = String(format: NSLocalizedString("Carta de código %@ critério de sucesso %@ e nível de conformidade %@", comment: ""), index, title, (levelVoiceOver?.voiceOver())!)
        }
    }
    
    func adjustStack() {
        if self.traitCollection.preferredContentSizeCategory > .extraLarge {
            self.stackView.axis = .vertical
        }else{
            self.stackView.axis = .horizontal
        }

        self.setNeedsLayout()
    }
}
