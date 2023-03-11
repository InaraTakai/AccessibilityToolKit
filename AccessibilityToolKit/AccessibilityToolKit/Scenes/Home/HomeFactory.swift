//
//  HomeFactory.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 23/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

class HomeFactory {
    static func getScreen() -> HomeScreen {
        let worker = HomeWorker()
        let view = HomeScreen(worker: worker)
        
        return view
    }
}
