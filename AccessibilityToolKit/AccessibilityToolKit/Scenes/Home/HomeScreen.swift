//
//  HomeScreen.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 13/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    private var viewModel: HomeModel = HomeModel(worker: HomeWorker())
    @State var showRandom: Bool = false
    @State private var dayCard = Card.placeholder
    @State private var randomCard = Card.placeholder
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                Color.toolKit.background
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack {
                        Text(HomeModel.Strings.dayCardText)
                            .title()
                            .padding(.top, 32)
                        CardView(card: dayCard, environment: .one(title: dayCard.title), isDayCard: true)
                        .padding(.top, 24)
                        HStack {
                            Text(HomeModel.Strings.principleText)
                                .title()
                            NavigationLink {
                                ListFactory.getScreen()
                            } label: {
                                Text(HomeModel.Strings.allCardsText)
                            }
                        }
                        .padding(.top, 32)
                        principles
                        
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.toolKit.backOpposite)
                            .padding(.top, 32)
                        Text(HomeModel.Strings.aboutText)
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
            .navigationTitle(HomeModel.Strings.allyText)
            .toolbar {
                Button(HomeModel.Strings.randomText) {
                    showRandom.toggle()
                }
                .sheet(isPresented: $showRandom) {
                    ModalCardFactory.getScreen()
                }
            }
            .onAppear(perform: getDayCard)
        }
    }
    
    var principles: some View {
        VStack(spacing: 16) {
            HStack(spacing: 16) {
                NavigationLink {
                    ListFactory.getScreen(title: .noticeable)
                } label: {
                    TitleView(title: .noticeable)
                }
                
                NavigationLink {
                    ListFactory.getScreen(title: .operable)
                } label: {
                    TitleView(title: .operable)
                }
            }
            HStack(spacing: 16) {
                NavigationLink {
                    ListFactory.getScreen(title: .understandable)
                } label: {
                    TitleView(title: .understandable)
                }
                
                NavigationLink {
                    ListFactory.getScreen(title: .robust)
                } label: {
                    TitleView(title: .robust)
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
    
    init(worker: HomeWorkProtocol) {
        viewModel = HomeModel(worker: worker)
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
