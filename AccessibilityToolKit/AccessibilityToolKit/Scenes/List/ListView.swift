//
//  ListView.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 15/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

struct ListView: View {
    private var viewModel: ListModel = ListModel(worker: ListWorker())
    @State private var cards: [Card] = []
    
    var body: some View {
        let allCardsText = NSLocalizedString("Todas as Cartas", comment: String())
        
        ScrollView {
            ZStack {
                viewModel.title?.color
                LazyVStack {
                    ForEach(cards) { card in
                        let environment: CardEnvironment = viewModel.title != nil ? .listTitle : .listAll(title: card.title)
                        CardView(card: card, environment: environment)
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 32)
            }
        }
        .toolbarBackground(viewModel.title?.color ?? .toolKit.background, for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
        .navigationTitle(Text(viewModel.title?.name ?? allCardsText))
        .foregroundColor(viewModel.title != nil ? .toolKit.black : .toolKit.backOpposite)
        .onAppear(perform: getCards)
    }
    
    func getCards() {
        Task {
            do {
                cards = try await viewModel.cards
            } catch let error {
                print(error)
            }
        }
    }
    
    init(worker: ListWorkProtocol, title: Title? = nil) {
        viewModel = ListModel(worker: worker, title: title)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                ListView(worker: ListWorker())
            }
            
            NavigationView {
                ListView(worker: ListWorker())
            }
            .environment(\.colorScheme, .dark)
        }
    }
}
