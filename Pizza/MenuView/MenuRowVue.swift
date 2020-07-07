//
//  MenuRowVue.swift
//  Pizza
//
//  Created by Didier Delhaisse on 05/07/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import SwiftUI

struct MenuRowVue: View {
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image("1_100w")
            VStack {
                Text("Huli chicken pizza")
                    .font(.title)
                    .fontWeight(.light)
                RatingsView()
            }
            Spacer()
        }
    }
}

struct MenuRowVue_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowVue()
        
    }
}


