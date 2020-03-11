//
//  CardTableViewCell.swift
//  AccessibilityToolKit
//
//  Created by Gabriel Ferreira on 31/01/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var levelView: UIView!
    @IBOutlet weak var stackView: UIStackView!
    
    var isInPrinciple: Bool!
    var card: Card!
    
    var levelVoiceOver: Level?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.adjustStack()
    }
    
    override func layoutSubviews() {
        self.setAccessibilityCard()
        self.setAppearance()
    }
    
    func setAccessibilityCard() {
        self.isAccessibilityElement = true
        if let index = self.indexLabel?.text, let title = self.titleLabel.text {
            self.accessibilityLabel = String(format: NSLocalizedString("Carta de código %@ critério de sucesso %@ e nível de conformidade %@", comment: ""), index, title, (levelVoiceOver?.voiceOver())!)
        }
    }
    
    func setAppearance() {
        if isInPrinciple {
            self.cellView.backgroundColor = UIColor(named: "ToolKitBackground")
            self.indexLabel.textColor = UIColor(named: "ToolKitBackOpposite")
            self.titleLabel.textColor = UIColor(named: "ToolKitBackOpposite")
            self.levelLabel.textColor = UIColor(named: "ToolKitBackground")
            self.levelView.backgroundColor = UIColor(named: "ToolKitBackOpposite")
        }else{
            self.cellView.backgroundColor = self.card.title.color()
            self.indexLabel.textColor = UIColor.black
            self.titleLabel.textColor = UIColor.black
            self.levelLabel.textColor = UIColor.white
            self.levelView.backgroundColor = UIColor.black
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
