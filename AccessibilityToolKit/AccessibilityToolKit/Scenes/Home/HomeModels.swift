//
//  HomeModels.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 23/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import Foundation

struct Home {
    class ViewModel {
        var worker: HomeWorkProtocol
        var dayCard: Card {
            get async throws {
                return try await worker.fetchDayCard()
            }
        }
        var randomCard: Card {
            get async throws {
                return try await worker.fetchRandomCard()
            }
        }
        
        init(worker: HomeWorkProtocol) {
            self.worker = worker
        }
    }
}

