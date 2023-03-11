//
//  ModalCardWorker.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 08/03/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

protocol ModalCardWorkProtocol {
    func fetchRandomCard() async throws -> Card
}

class ModalCardWorker: ModalCardWorkProtocol {
    func fetchRandomCard() async throws -> Card {
        return try await DataProvider.cardResponse.cards?.randomElement() ?? Card.placeholder
    }
}
