//
//  TitleView.swift
//  AccessibilityToolKit
//
//  Created by Gab Ferreira on 14/02/23.
//  Copyright © 2023 Inara Takashi. All rights reserved.
//

import SwiftUI


struct TitleView: View {
    var title: Title
    
    var body: some View {
        ZStack {
            title.color
            VStack {
                HStack {
                    Spacer()
                    title.symbol.symbol()
                        .padding(EdgeInsets(top: 16,
                                            leading: 0,
                                            bottom: 0,
                                            trailing: 16))
                }
                Spacer()
                Text(title.name)
                    .foregroundColor(.toolKit.black)
                    .bold()
                    .font(.body)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                    .padding(EdgeInsets(top: 0,
                                        leading: 16,
                                        bottom: 16,
                                        trailing: 16))
            }
        }
        .frame(height: 112)
        .cornerRadius(16)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: .Noticeable)
    }
}
