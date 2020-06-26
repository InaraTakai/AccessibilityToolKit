//
//  CardRow.swift
//  AccessibilityToolKit
//
//  Created by Gabriel Ferreira on 26/06/20.
//  Copyright © 2020 Inara Takashi. All rights reserved.
//

import SwiftUI

struct CardRow : View {
    var icon = "book.fill"
    var color = "orange"
    var text = "All Wikis"
    
    var body: some View {
        HStack {
             VStack(alignment: .leading, spacing: 15 ){
                 Image(systemName: icon).foregroundColor(Color.white)
                 Text(text).foregroundColor(Color.white)
             }
             
             Spacer()
             Image(systemName: icon).resizable()
                 .foregroundColor(Color.white.opacity(0.3))
                 .frame(width: 40, height: 40)
                 .aspectRatio(contentMode: .fit)
             
         }.padding()
            .frame(minWidth: 0.0, maxWidth: .infinity, alignment: .leading)
            .background(Color.orange)
            .cornerRadius(16)
         
    }
}

struct CardRow_Previews: PreviewProvider {
    static var previews: some View {
        CardRow()
    }
}
