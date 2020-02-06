//
//  Level.swift
//  AccessibilityToolKit
//
//  Created by Inara Takashi on 04/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import Foundation

enum Level {
    case A
    case AA
    case AAA
    
    func level() -> String{
        var levelLabel :  String
        
        switch self {
        case .A:
            levelLabel = NSLocalizedString("A", comment: "Nível de conformidade")
        case .AA:
            levelLabel = NSLocalizedString("AA", comment: "Nível de conformidade")
        case .AAA:
            levelLabel = NSLocalizedString("AAA", comment: "Nível de conformidade")
        }
        return levelLabel
    }
    
    func voiceOver() -> String{
        var voiceOverLabel :  String
        
        switch self {
        case .A:
           voiceOverLabel = NSLocalizedString("baixo", comment: "Nível de conformidade")
        case .AA:
            voiceOverLabel = NSLocalizedString("médio", comment: "Nível de conformidade")
        case .AAA:
            voiceOverLabel = NSLocalizedString("alto", comment: "Nível de conformidade")
        }
        return voiceOverLabel
    }
}
