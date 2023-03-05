//
//  HomeFactory.swift
//  AccessibilityToolKit
//
//  Created by Ribeiro Ferreira on 23/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import Foundation

class HomeFactory {
    static func getScreen() -> HomeScreen {
        let worker = HomeWorker()
        var view = HomeScreen(worker: worker)
        
        return view
    }
}
