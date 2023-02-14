//
//  HomeView.swift
//  AccessibilityToolKit
//
//  Created by Ribeiro Ferreira on 13/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        let dayCardText = NSLocalizedString("Carta do Dia", comment: String())
        let principleText = NSLocalizedString("Princípios", comment: String())
        let allyText = NSLocalizedString("Ally ToolKit", comment: String())
        NavigationView {
            ZStack {
                Color.toolKit.background
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack {
                        Text(dayCardText)
                            .title()
                        CardView(index: "1.1.1",
                                 title: "Conteúdo não textual",
                                 level: "A")
                        Text(principleText)
                            .title()
                    }
                    .padding(.horizontal, 20)
                }
                .navigationTitle(allyText)
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

extension Text {
    func title() -> some View {
        self.font(.title)
            .bold()
            .frame(maxWidth: .infinity,
                   alignment: .leading)
    }
}

struct CardView: View {
    var index: String
    var title: String
    var level: String
    
    var body: some View {
        HStack {
            Text(index)
                .bold()
                .padding(.leading, 16)
            Text(title)
            IndexView(level: level)
                .padding(20)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(.gray, lineWidth: 3)
        )
    }
}

struct IndexView: View {
    var level: String
    
    var body: some View {
        ZStack {
            Text("AAA")
                .foregroundColor(.toolKit.backOpposite)
                .padding(8)
            Text(level)
                .foregroundColor(.toolKit.background)
                .padding(8)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
                
        }
        .background(Color.toolKit.backOpposite)
        .cornerRadius(8)
        .fixedSize(horizontal: true, vertical: false)
    }
}

extension Color {
    struct toolKit {
        static var backOpposite: Color {
            Color("ToolKitBackOpposite")
        }
        
        static var background: Color {
            Color("ToolKitBackground")
        }
    }
}
