//
//  CardView.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 14/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

struct CardView: View {
    var title: Title
    var code: String
    var guideline: String
    var level: Level
    
    var body: some View {
        let layout = true ? AnyLayout(HStackLayout()) : AnyLayout(VStackLayout())
        ZStack {
            Color.toolKit.background
                .edgesIgnoringSafeArea(.all)
            layout {
                Text(code)
                    .font(.body)
                    .bold()
                    .padding(.leading, 16)
                Text(guideline)
                    .font(.body)
                Spacer()
                LevelView(level: level.description)
                    .padding(20)
            }
        }
        .cornerRadius(16)
        .fixedSize(horizontal: false, vertical: true)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(title.color, lineWidth: 3)
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CardView(title: .Noticeable,
                     code: "1.1.1",
                     guideline: "Conteúdo não textual",
                     level: .A)
            
            CardView(title: .Noticeable,
                     code: "1.1.1",
                     guideline: "Conteúdo não textual",
                     level: .A)
                .environment(\.colorScheme, .dark)
        }
    }
}
