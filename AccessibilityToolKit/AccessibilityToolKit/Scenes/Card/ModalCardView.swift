//
//  ModalCardView.swift
//  AccessibilityToolKit
//
//  Created by Ribeiro Ferreira on 14/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

struct ModalCardView: View {
    @Environment(\.presentationMode) private var presentationMode
    var card: Card
    
    var body: some View {
        let dismissText = NSLocalizedString("Fechar", comment: String())
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
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

struct ModalCardView_Previews: PreviewProvider {
    static var previews: some View {
        ModalCardView(card: card1)
    }
}
