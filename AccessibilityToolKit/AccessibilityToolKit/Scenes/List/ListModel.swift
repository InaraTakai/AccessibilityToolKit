//
//  ListModel.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 08/03/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

class ListModel {
    var worker: ListWorkProtocol
    let title: Title?
    private var _cards: [Card]?
    var cards: [Card] {
        get async throws {
            if let _cards {
                return _cards
            } else {
                let cards = try await worker.fetchCards(for: title)
                _cards = cards
                return cards
            }
        }
    }
    
    init(worker: ListWorkProtocol, title: Title? = nil) {
        self.worker = worker
        self.title = title
    }
}

