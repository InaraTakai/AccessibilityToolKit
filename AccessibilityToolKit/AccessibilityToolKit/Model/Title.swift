//
//  Title.swift
//  AccessibilityToolKit
//
//  Created by Inara Takashi on 04/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

enum Title: Codable {
    case Noticeable
    case Operable
    case Understandable
    case Robust
    
    var name: String {
        var name: String
        
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
    
    var color: Color {
        var color: Color
        
        switch self {
        case .Noticeable:
            color = .toolKit.red
        case .Operable:
            color = .toolKit.blue
        case .Understandable:
            color = .toolKit.yellow
        case .Robust:
            color = .toolKit.green
        }
        
        return color
    }
    
    var symbol: Image {
        var symbol: Image
        
        switch self {
        case .Noticeable:
            symbol = Image("NoticeableSymbol")
        case .Operable:
            symbol = Image("OperableSymbol")
        case .Understandable:
            symbol = Image("UnderstandableSymbol")
        case .Robust:
            symbol = Image("RobustSymbol")
        }
        return symbol
    }
    
    var uicolor: UIColor? {
        var color: UIColor?
        
        switch self {
        case .Noticeable:
            color = UIColor(named: "ToolKitRed")
        case .Operable:
            color = UIColor(named: "ToolKitBlue")
        case .Understandable:
            color = UIColor(named: "ToolKitYellow")
        case .Robust:
            color = UIColor(named: "ToolKitGreen")
        }
        
        return color
    }
    
    var uisymbol: UIImage? {
        var symbol: UIImage?
        
        switch self {
        case .Noticeable:
            symbol = UIImage(named: "NoticeableSymbol")
        case .Operable:
            symbol = UIImage(named: "OperableSymbol")
        case .Understandable:
            symbol = UIImage(named: "UnderstandableSymbol")
        case .Robust:
            symbol = UIImage(named: "RobustSymbol")
        }
        return symbol
    }
}
