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
                Text("Huli pizza company")
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


