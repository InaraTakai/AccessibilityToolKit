//
//  ListView.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 15/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var cards: [Card]
    var title: Title?
    
    var body: some View {
        let allCardsText = NSLocalizedString("Todas as Cartas", comment: String())
        
        ScrollView {
            ZStack {
                title?.color
                LazyVStack {
                    ForEach(cards) { card in
                        let environment: CardEnvironment = title != nil ? .listTitle : .listAll(title: card.title)
                        CardView(card: card, environment: environment)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 32)
            }
        }
        .toolbarBackground(title?.color ?? .toolKit.background, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .navigationTitle(Text(title?.name ?? allCardsText))
        .foregroundColor(title != nil ? .toolKit.black : .toolKit.backOpposite)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                ListView(cards: allCards)
            }
            
            NavigationView {
                ListView(cards: allCards)
            }
            .environment(\.colorScheme, .dark)
        }
    }
}
