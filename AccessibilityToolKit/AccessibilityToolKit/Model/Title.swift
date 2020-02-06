//
//  Title.swift
//  AccessibilityToolKit
//
//  Created by Inara Takashi on 04/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import Foundation

enum Title {
    case Noticeable
    case Operable
    case Understandable
    case Robust
    
    func name() -> String{
        var name :  String
        
        switch self {
        case .Noticeable:
            name = NSLocalizedString("Perceptível", comment: "Princípio de acessibilidade")
        case .Operable:
            name = NSLocalizedString("Operável", comment: "Princípio de acessibilidade")
        case .Understandable:
            name = NSLocalizedString("Compreensível", comment: "Princípio de acessibilidade")
        case .Robust:
            name = NSLocalizedString("Robusto", comment: "Princípio de acessibilidade")
        }
        return name
    }
}
