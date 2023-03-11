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
    var isDayCard = false
    
    var body: some View {
        Button {
            showCard.toggle()
        } label: {
            ZStack {
                environment.backColor
                    .edgesIgnoringSafeArea(.all)
                HStack {
                    Text(card.code ?? String())
                        .foregroundColor(environment.textColor)
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
            ModalCardFactory.getScreen(card: card)
        }
        .accessibilityLabel(accessibilityLabel)
    }
    
    var accessibilityLabel: String {
        let string = isDayCard
        ? NSLocalizedString("A carta do dia é a de código %@ de critério de sucesso %@ e nível de conformidade %@", comment: "")
        : NSLocalizedString("Carta de código %@ critério de sucesso %@ e nível de conformidade %@", comment: "")
        let label = String(format: string,
                           card.code ?? String(),
                           card.title.name,
                           card.level.voiceOver)

        return label
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let card = Card.placeholder
        Group {
            CardView(card: card, environment: .one(title: card.title))
            
            CardView(card: card, environment: .one(title: card.title))
                .environment(\.colorScheme, .dark)
        }
    }
}
