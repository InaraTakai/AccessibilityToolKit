//
//  AccessibilityToolKitApp.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 23/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

@main
struct AccessibilityToolKitApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            HomeFactory.getScreen()
        }
    }
}
