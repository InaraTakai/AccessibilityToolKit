//
//  CardEnvironment.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 15/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

enum CardEnvironment {
    case listAll(title: Title)
    case listTitle
    case one(title: Title)
    
    var textColor: Color {
        var color: Color
        
        switch self {
        case .listAll(_):
            color = .toolKit.black
        case .listTitle, .one:
            color = .toolKit.backOpposite
        }
        
        return color
    }
    
    var backColor: Color {
        var color: Color
        
        switch self {
        case .listAll(let title):
            color = title.color
        case .listTitle, .one:
            color = .toolKit.background
        }
        
        return color
    }
    
    var borderColor: Color {
        var color: Color
        
        switch self {
        case .listAll(_), .listTitle:
            color = .clear
        case .one(let title):
            color = title.color
        }
        
        return color
    }
}
