//
//  CardsList.swift
//  AccessibilityToolKit
//
//  Created by Gabriel Ferreira on 26/06/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import SwiftUI

struct CardsList: View {
    var body: some View {
        NavigationView {
            List (){
                CardRow()
            }.navigationBarTitle("Cards")
        }
    }
}

struct CardsList_Previews: PreviewProvider {
    static var previews: some View {
        CardsList()
    }
}
