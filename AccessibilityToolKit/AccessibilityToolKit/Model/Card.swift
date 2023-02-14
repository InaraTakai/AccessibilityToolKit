//
//  Card.swift
//  AccessibilityToolKit
//
//  Created by Inara Takashi on 04/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import Foundation

struct Card: Codable {
    var title: Title
    var level: Level
    var code: String?
    var guideline: String?
    var criterion: String?
    var description: String?
    var link: String?
    var image: String?
}

