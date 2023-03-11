//
//  ListWorker.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 08/03/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import Foundation

protocol ListWorkProtocol {
    func fetchCards(for title: Title?) async throws -> [Card]
}

class ListWorker: ListWorkProtocol {
    func fetchCards(for title: Title?) async throws -> [Card] {
        guard let title = title
        else {
            return try await DataProvider.cardResponse.cards ?? []
        }
        return try await DataProvider.cardResponse.cards(for: title) ?? []
    }
}
