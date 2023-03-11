//
//  DataProvider.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 11/03/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import Foundation

struct DataProvider {
    private static var _cardResponse: CardResponse?
    static var cardResponse: CardResponse {
        get async throws {
            if let _cardResponse {
                return _cardResponse
            } else {
                let response = try await fetchCards()
                _cardResponse = response
                return response
            }
        }
    }
    
    static func fetchCards() async throws -> CardResponse {
        guard let path = Bundle.main.path(forResource: "cards", ofType: "json") else {
            return CardResponse()
        }
        
        let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
        let response = try JSONDecoder().decode(CardResponse.self, from: data)
        
        return response
    }
}
