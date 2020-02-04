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
    
//    var indexText: String{
//        set{
//            self.
//        }
//        
//        get{
//            return self.indexLabel.text ?? ""
//        }
//    }
    
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
            self.accessibilityLabel = "A carta do dia é a número \(index) de título \(title)"
        }
    }
    
}
