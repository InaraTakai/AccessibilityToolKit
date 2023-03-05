//
//  HomeWorker.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 22/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import Foundation

protocol HomeWorkProtocol {
    func fetchCards(for title: Title?) async throws -> [Card]
    func fetchRandomCard() async throws -> Card
    func fetchDayCard() async throws -> Card
}

class HomeWorker: HomeWorkProtocol {
    func fetchDayCard() async throws -> Card {
        try await Task.sleep(nanoseconds: UInt64(2 * Double(NSEC_PER_SEC)))
        return allCards.randomElement() ?? card1
    }
    
    func fetchRandomCard() async throws -> Card {
        try await Task.sleep(nanoseconds: UInt64(2 * Double(NSEC_PER_SEC)))
        return allCards.randomElement() ?? card1
    }
    
    func fetchCards(for title: Title?) async throws -> [Card] {
        try await Task.sleep(nanoseconds: UInt64(2 * Double(NSEC_PER_SEC)))
        guard let title = title
        else {
            return allCards
        }
        return listaPrinciple[title.name] ?? []
    }
}
