//
//  MenuRowVue.swift
//  Pizza
//
//  Created by Didier Delhaisse on 05/07/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import SwiftUI

struct MenuRowVue: View {
    var menuItem: MenuItem = testMenuItem
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 15) {
                Image("\(menuItem.id)_100w")
//                .cornerRadius(10)
//                .border(Color("G4"), width: 2)
                    .clipShape(Capsule())
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
                VStack(alignment: .leading) {
                    Text(menuItem.name)
                        .font(.system(size: 20))
                        .fontWeight(.light)
                    RatingsView(count: menuItem.rating)
                }
                //Spacer()
            }
            Text(menuItem.description)
        }
    }
}

struct MenuRowVue_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowVue(menuItem: MenuModel().menu[2])
        
    }
}


