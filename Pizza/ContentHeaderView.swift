//
//  ContentHeaderView.swift
//  Pizza
//
//  Created by Didier Delhaisse on 05/07/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("Surf Board")
                    .resizable()
                    .scaledToFit()
                    .frame(minWidth: 300, idealWidth: 500, maxWidth: 600, minHeight: 75, idealHeight: 143, maxHeight: 150, alignment: .center)
                Text("Huli pizza company")
                    .offset(x: -20, y: 30)
                    .font(Font.custom("Avinir-black", size: 20))
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ContentHeaderView()
        .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}


