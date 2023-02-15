//
//  ListView.swift
//  AccessibilityToolKit
//
//  Created by Ribeiro Ferreira on 15/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

struct ListView: View {
    var cards: [Card]
    var isOneTitle: Bool
    
    var body: some View {
        List(cards) { card in
            let environment: CardEnvironment = isOneTitle ? .listTitle : .listAll(title: card.title)
            CardView(card: card, environment: environment)
                .listRowSeparator(.hidden)
        }
        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(cards: allCards, isOneTitle: false)
    }
}
