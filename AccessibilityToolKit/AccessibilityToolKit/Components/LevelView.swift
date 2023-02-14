//
//  LevelView.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 14/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

struct LevelView: View {
    var level: String
    
    var body: some View {
        ZStack {
            Text("AAA")
                .font(.body)
                .bold()
                .foregroundColor(.toolKit.backOpposite)
                .padding(8)
            Text(level)
                .font(.body)
                .bold()
                .foregroundColor(.toolKit.background)
                .padding(8)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
                
        }
        .background(Color.toolKit.backOpposite)
        .cornerRadius(8)
        .fixedSize(horizontal: true, vertical: true)
    }
}
struct LevelView_Previews: PreviewProvider {
    static var previews: some View {
        LevelView(level: "A")
    }
}
