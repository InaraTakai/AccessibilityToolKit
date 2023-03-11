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

enum Title: String, Codable {
    case noticeable
    case operable
    case understandable
    case robust
    
    var name: String {
        var name: String
        
        switch self {
        case .noticeable:
            name = NSLocalizedString("Perceptível", comment: "Princípio de acessibilidade")
        case .operable:
            name = NSLocalizedString("Operável", comment: "Princípio de acessibilidade")
        case .understandable:
            name = NSLocalizedString("Compreensível", comment: "Princípio de acessibilidade")
        case .robust:
            name = NSLocalizedString("Robusto", comment: "Princípio de acessibilidade")
        }
        return name
    }
    
    var color: Color {
        var color: Color
        
        switch self {
        case .noticeable:
            color = .toolKit.red
        case .operable:
            color = .toolKit.blue
        case .understandable:
            color = .toolKit.yellow
        case .robust:
            color = .toolKit.green
        }
        
        return color
    }
    
    var symbol: Image {
        var symbol: Image
        
        switch self {
        case .noticeable:
            symbol = Image("NoticeableSymbol")
        case .operable:
            symbol = Image("OperableSymbol")
        case .understandable:
            symbol = Image("UnderstandableSymbol")
        case .robust:
            symbol = Image("RobustSymbol")
        }
        return symbol
    }
    
    var uicolor: UIColor? {
        var color: UIColor?
        
        switch self {
        case .noticeable:
            color = UIColor(named: "ToolKitRed")
        case .operable:
            color = UIColor(named: "ToolKitBlue")
        case .understandable:
            color = UIColor(named: "ToolKitYellow")
        case .robust:
            color = UIColor(named: "ToolKitGreen")
        }
        
        return color
    }
    
    var uisymbol: UIImage? {
        var symbol: UIImage?
        
        switch self {
        case .noticeable:
            symbol = UIImage(named: "NoticeableSymbol")
        case .operable:
            symbol = UIImage(named: "OperableSymbol")
        case .understandable:
            symbol = UIImage(named: "UnderstandableSymbol")
        case .robust:
            symbol = UIImage(named: "RobustSymbol")
        }
        return symbol
    }
}
