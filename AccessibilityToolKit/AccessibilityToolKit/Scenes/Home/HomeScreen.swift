//
//  HomeScreen.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 13/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    private var viewModel: Home.ViewModel = Home.ViewModel(worker: HomeWorker())
    @State var showRandom: Bool = false
    @State private var dayCard = Card.placeholder
    @State private var randomCard = Card.placeholder
    
    var body: some View {
        let dayCardText = NSLocalizedString("Carta do Dia", comment: String())
        let principleText = NSLocalizedString("Princípios", comment: String())
        let allyText = NSLocalizedString("Ally ToolKit", comment: String())
        let randomText = NSLocalizedString("Sortear", comment: String())
        let allCardsText = NSLocalizedString("Todas as Cartas", comment: String())
        let aboutText = NSLocalizedString("Sobre o aplicativo", comment: String())
        
        NavigationStack {
            ZStack {
                Color.toolKit.background
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack {
                        Text(dayCardText)
                            .title()
                            .padding(.top, 32)
                        CardView(card: dayCard, environment: .one(title: dayCard.title))
                        .padding(.top, 24)
                        HStack {
                            Text(principleText)
                                .title()
                            NavigationLink {
                                ListView(cards: allCards)
                            } label: {
                                Text(allCardsText)
                            }
                        }
                        .padding(.top, 32)
                        principles
                        
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.toolKit.backOpposite)
                            .padding(.top, 32)
                        Text(aboutText)
                            .font(.body)
                            .bold()
                            .padding(.vertical, 16)
                            .frame(maxWidth: .infinity,
                                   alignment: .leading)
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.toolKit.backOpposite)
                    }
                    .padding(.horizontal, 20)
                }
            }
            .navigationTitle(allyText)
            .toolbar {
                Button(randomText, action: getRandomCard)
                    .sheet(isPresented: $showRandom) {
                        ModalCardView(card: randomCard)
                    }
            }
            .onAppear(perform: getDayCard)
        }
    }
    
    var principles: some View {
        VStack(spacing: 16) {
            HStack(spacing: 16) {
                NavigationLink {
                    ListView(cards: listaPrinciple[Title.Noticeable.name] ?? [],
                             title: .Noticeable)
                } label: {
                    TitleView(title: .Noticeable)
                }
                
                NavigationLink {
                    ListView(cards: listaPrinciple[Title.Operable.name] ?? [],
                             title: .Operable)
                } label: {
                    TitleView(title: .Operable)
                }
            }
            HStack(spacing: 16) {
                NavigationLink {
                    ListView(cards: listaPrinciple[Title.Understandable.name] ?? [],
                             title: .Understandable)
                } label: {
                    TitleView(title: .Understandable)
                }
                
                NavigationLink {
                    ListView(cards: listaPrinciple[Title.Robust.name] ?? [],
                             title: .Robust)
                } label: {
                    TitleView(title: .Robust)
                }
            }
        }
    }
    
    func getDayCard() {
        Task {
            do {
                dayCard = try await viewModel.dayCard
            } catch let error {
                print(error)
            }
        }
    }
    
    func getRandomCard() {
        Task {
            do {
                randomCard = try await viewModel.randomCard
                showRandom.toggle()
            } catch let error {
                print(error)
            }
        }
    }
    
    init(worker: HomeWorkProtocol) {
        viewModel = Home.ViewModel(worker: worker)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeScreen(worker: HomeWorker())
            
            HomeScreen(worker: HomeWorker())
                .environment(\.colorScheme, .dark)
        }
    }
}
