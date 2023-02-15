//
//  CardView.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 14/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

struct CardView: View {
    @State var showCard: Bool = false
    var card: Card
    var environment: CardEnvironment
    
    var body: some View {
        Button {
            showCard.toggle()
        } label: {
            ZStack {
                environment.backColor
                    .edgesIgnoringSafeArea(.all)
                HStack {
                    Text(card.code ?? String())                   .foregroundColor(environment.textColor)
                        .font(.body)
                        .bold()
                        .padding(.leading, 16)
                    Text(card.guideline ?? String())
                        .foregroundColor(environment.textColor)
                        .font(.body)
                    Spacer()
                    LevelView(level: card.level.description)
                        .padding(20)
                }
            }
            .cornerRadius(16)
            .fixedSize(horizontal: false, vertical: true)
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(environment.borderColor, lineWidth: 3)
            )
        }
        .sheet(isPresented: $showCard) {
            ModalCardView(card: card1)
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let card = card1
        Group {
            CardView(card: card, environment: .one(title: card.title))
            
            CardView(card: card, environment: .one(title: card.title))
                .environment(\.colorScheme, .dark)
        }
    }
}
