//
//  Card.swift
//  AccessibilityToolKit
//
//  Created by Inara Takashi on 04/02/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import Foundation

struct Card: Codable, Identifiable {
    var id = UUID()
    
    var title: Title
    var level: Level
    var code: String?
    var guideline: String?
    var criterion: String?
    var description: String?
    var link: String?
    var image: String?
    
    static var placeholder: Card {
        return Card()
    }
    
    enum CodingKeys: String, CodingKey {
        case title
        case level
        case code
        case guideline
        case criterion
        case description
        case link
        case image
    }
    
    init(title: Title = .operable,
         level: Level = .a,
         code: String? = nil,
         guideline: String? = nil,
         criterion: String? = nil,
         description: String? = nil,
         link: String? = nil,
         image: String? = nil) {
        self.title = title
        self.level = level
        self.code = code
        self.guideline = guideline
        self.criterion = criterion
        self.description = description
        self.link = link
        self.image = image
    }
}

struct CardResponse: Codable {
    var cards: [Card]?
    
    func cards(for title: Title) -> [Card]? {
        return cards?.filter({ $0.title == title })
    }
}
