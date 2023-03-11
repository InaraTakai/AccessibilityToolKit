//
//  ListFactory.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 08/03/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

class ListFactory {
    static func getScreen(title: Title? = nil) -> ListView {
        let worker = ListWorker()
        let view = ListView(worker: worker, title: title)
        
        return view
    }
}
