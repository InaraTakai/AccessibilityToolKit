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
        let randomText = NSLocalizedString("Sortear", comment: String())
        let allCardsText = NSLocalizedString("Todas as Cartas", comment: String())
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
                        CardView(card: card, environment: .one(title: card.title))
                        .padding(.top, 24)
                        HStack {
                            Text(principleText)
                                .title()
                            NavigationLink {
                                ListView(cards: allCards, isOneTitle: false)
                            } label: {
                                Text(allCardsText)
                            }
                        }
                        .padding(.top, 32)
                        principles
                    }
                    .padding(.horizontal, 20)
                }
            }
            .navigationTitle(allyText)
            .toolbar {
                Button(randomText) {
                    print(randomText)
                }
            }
        }
    }
    
    var principles: some View {
        VStack(spacing: 16) {
            HStack(spacing: 16) {
                Button {
                    print(Title.Noticeable)
                } label: {
                    TitleView(title: .Noticeable)
                }
                Button {
                    print(Title.Operable)
                } label: {
                    TitleView(title: .Operable)
                }
            }
            HStack(spacing: 16) {
                Button {
                    print(Title.Understandable)
                } label: {
                    TitleView(title: .Understandable)
                }
                Button {
                    print(Title.Robust)
                } label: {
                    TitleView(title: .Robust)
                }
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
