//
//  ModalCardFactory.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 08/03/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

class ModalCardFactory {
    static func getScreen(card: Card? = nil) -> ModalCardView {
        let worker = ModalCardWorker()
        let view = ModalCardView(worker: worker, card: card)
        
        return view
    }
}
