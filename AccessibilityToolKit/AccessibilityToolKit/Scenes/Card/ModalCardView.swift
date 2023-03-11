//
//  ModalCardView.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 14/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

struct ModalCardView: View {
    private var viewModel: ModalCardModel = ModalCardModel(worker: ModalCardWorker())
    @State private var card: Card = Card.placeholder
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        let dismissText = NSLocalizedString("Fechar", comment: String())
        let descriptionText = NSLocalizedString("Descrição", comment: String())
        let linkText = NSLocalizedString("Link para diretriz completa", comment: String())
        ScrollView {
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Text(dismissText)
                    }
                    .padding(EdgeInsets(top: 16,
                                        leading: 0,
                                        bottom: 8,
                                        trailing: 16))
                }
                ZStack {
                    card.title.color
                    HStack {
                        Spacer()
                        card.title.symbol.symbol()
                            .padding(EdgeInsets(top: 24,
                                                leading: 0,
                                                bottom: 24,
                                                trailing: 32))
                    }
                }
                VStack(alignment: .leading) {
                    HStack {
                        Text(card.title.name)
                            .font(.title)
                            .bold()
                            .frame(maxWidth: .infinity,
                                   alignment: .leading)
                        LevelView(level: card.level.description)
                    }
                    .padding(.top, 32)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.toolKit.backOpposite)
                        .padding(.top, 32)
                    Text(card.guideline ?? String())
                        .font(.title3)
                        .padding([.top, .bottom], 16)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.toolKit.backOpposite)
                    
                    HStack {
                        Text(card.criterion ?? String())
                            .font(.title2)
                            .bold()
                    }
                    .padding(.vertical, 32)
                    Text(descriptionText)
                        .bold()
                        .font(.body)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                    Text(card.description ?? String())
                        .font(.body)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                    
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.toolKit.backOpposite)
                        .padding(.top, 32)
                    Button {
                        print(linkText)
                    } label: {
                        Text(linkText)
                    }
                    .padding(.vertical, 24)
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.toolKit.backOpposite)
                    
                }
                .padding(.horizontal, 20)
            }
        }
        .onAppear(perform: getCard)
    }
    
    func getCard() {
        Task {
            do {
                card = try await viewModel.card
            } catch let error {
                print(error)
            }
        }
    }
    
    init(worker: ModalCardWorkProtocol, card: Card? = nil) {
        viewModel = ModalCardModel(worker: worker, card: card)
    }
}

struct ModalCardView_Previews: PreviewProvider {
    static var previews: some View {
        ModalCardView(worker: ModalCardWorker())
    }
}
