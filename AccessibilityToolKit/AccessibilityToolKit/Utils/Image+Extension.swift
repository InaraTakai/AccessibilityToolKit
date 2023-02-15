//
//  Image+Extension.swift
//  AccessibilityToolKit
//
//  Created by Ribeiro Ferreira on 14/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

extension Image {
    func symbol() -> some View {
        self.resizable()
            .frame(
                width: 24,
                height: 24,
                alignment: .trailing)
    }
}
