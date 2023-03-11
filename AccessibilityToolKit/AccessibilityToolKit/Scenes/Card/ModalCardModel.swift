//
//  ModalCardModel.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 08/03/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

class ModalCardModel {
    var worker: ModalCardWorkProtocol
    private var _card: Card?
    var card: Card {
        get async throws {
            if let _card {
                return _card
            } else {
                let card = try await worker.fetchRandomCard()
                _card = card
                return card
            }
        }
    }
    
    init(worker: ModalCardWorkProtocol, card: Card? = nil) {
        self.worker = worker
        _card = card
    }
}
