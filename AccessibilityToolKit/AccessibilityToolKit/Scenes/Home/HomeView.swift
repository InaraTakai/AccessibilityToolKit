//
//  HomeView.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 13/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        let dayCardText = NSLocalizedString("Carta do Dia", comment: String())
        let principleText = NSLocalizedString("Princípios", comment: String())
        let allyText = NSLocalizedString("Ally ToolKit", comment: String())
        let card = card1
        NavigationView {
            ZStack {
                Color.toolKit.background
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack {
                        Text(dayCardText)
                            .title()
                            .padding(.top, 32)
                        CardView(title: card.title,
                                 code: card.code ?? String(),
                                 guideline: card.guideline ?? String(),
                                 level: card.level)
                        .padding(.top, 24)
                        Text(principleText)
                            .title()
                            .padding(.top, 32)
                        principles
                    }
                    .padding(.horizontal, 20)
                }
                .navigationTitle(allyText)
            }
        }
    }
    
    var principles: some View {
        VStack(spacing: 16) {
            HStack(spacing: 16) {
                TitleView(title: .Noticeable)
                TitleView(title: .Operable)
            }
            HStack(spacing: 16) {
                TitleView(title: .Understandable)
                TitleView(title: .Robust)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
            
            HomeView()
                .environment(\.colorScheme, .dark)
        }
    }
}
