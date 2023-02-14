//
//  Text+Extension.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 14/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

extension Text {
    func title() -> some View {
        self.font(.title)
            .bold()
            .frame(maxWidth: .infinity,
                   alignment: .leading)
    }
}
