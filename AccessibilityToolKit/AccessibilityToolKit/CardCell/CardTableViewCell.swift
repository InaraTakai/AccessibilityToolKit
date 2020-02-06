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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.setAccessibilityCard()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setAccessibilityCard() {
        self.isAccessibilityElement = true
        if let index = self.indexLabel?.text, let title = self.titleLabel.text {
            self.accessibilityLabel = "Carta de número \(index) de título \(title)"
        }
    }
    
//    func adjustStack() {
//        if self.traitCollection.preferredContentSizeCategory > .extraExtraLarge {
//            self.stackUp.axis = .vertical
//            self.stackDown.axis = .vertical
//            self.stackDay.axis = .vertical
//        }else if self.traitCollection.preferredContentSizeCategory > .extraLarge {
//            self.stackUp.axis = .horizontal
//            self.stackDown.axis = .horizontal
//            self.stackDay.axis = .vertical
//        }else{
//            self.stackUp.axis = .horizontal
//            self.stackDown.axis = .horizontal
//            self.stackDay.axis = .horizontal
//        }
//        
//        self.view.setNeedsLayout()
//    }
}
