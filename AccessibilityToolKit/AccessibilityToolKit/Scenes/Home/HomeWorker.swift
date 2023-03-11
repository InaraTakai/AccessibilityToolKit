//
//  HomeWorker.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 22/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import Foundation

protocol HomeWorkProtocol {
    func fetchDayCard() async throws -> Card
}

class HomeWorker: HomeWorkProtocol {
    let userDefaults = UserDefaults.standard
    
    func fetchDayCard() async throws -> Card {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        var dayCard: Card
        
        if let date = userDefaults.string(forKey: "date"),
           date == formatter.string(from: Date()),
           let cardData = userDefaults.data(forKey: "card"),
           let card = try? JSONDecoder().decode(Card.self, from: cardData) {
            dayCard = card
        } else {
            userDefaults.set(formatter.string(from: Date()), forKey: "date")
            dayCard = try await DataProvider.cardResponse.cards?.randomElement() ?? Card.placeholder
            self.userDefaults.set(try? JSONEncoder().encode(dayCard), forKey: "card")
        }
        
        return dayCard
    }
}
