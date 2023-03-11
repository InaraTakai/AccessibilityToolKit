//
//  Level.swift
//  AccessibilityToolKit
//
//  Created by Inara Takashi on 04/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import Foundation

enum Level: String, Codable {
    case a
    case aa
    case aaa
    
    var description: String {
        var levelLabel: String
        
        switch self {
        case .a:
            levelLabel = NSLocalizedString("A", comment: "Nível de conformidade")
        case .aa:
            levelLabel = NSLocalizedString("AA", comment: "Nível de conformidade")
        case .aaa:
            levelLabel = NSLocalizedString("AAA", comment: "Nível de conformidade")
        }
        
        return levelLabel
    }
    
    var voiceOver: String {
        var voiceOverLabel: String
        
        switch self {
        case .a:
           voiceOverLabel = NSLocalizedString("baixo", comment: "Nível de conformidade")
        case .aa:
            voiceOverLabel = NSLocalizedString("médio", comment: "Nível de conformidade")
        case .aaa:
            voiceOverLabel = NSLocalizedString("alto", comment: "Nível de conformidade")
        }
        
        return voiceOverLabel
    }
}
