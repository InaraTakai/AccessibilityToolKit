//
//  HomeModels.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 23/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import Foundation

class HomeModel {
    var worker: HomeWorkProtocol
    private var _dayCard: Card?
    var dayCard: Card {
        get async throws {
            if let _dayCard {
                return _dayCard
            } else {
                let card = try await worker.fetchDayCard()
                _dayCard = card
                return card
            }
        }
    }
    
    struct Strings {
        static let dayCardText = NSLocalizedString("Carta do Dia", comment: String())
        static let principleText = NSLocalizedString("Princípios", comment: String())
        static let allyText = NSLocalizedString("Ally ToolKit", comment: String())
        static let randomText = NSLocalizedString("Sortear", comment: String())
        static let allCardsText = NSLocalizedString("Todas as Cartas", comment: String())
        static let aboutText = NSLocalizedString("Sobre o aplicativo", comment: String())
    }
    
    init(worker: HomeWorkProtocol) {
        self.worker = worker
    }
}
