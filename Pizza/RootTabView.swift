//
//  RootTabView.swift
//  Pizza
//
//  Created by Didier Delhaisse on 09/07/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            ContentView(orderModel: OrderModel())
                .tabItem {
                    Image(systemName: "cart")
                    Text("Order")
                }
            HistoryView()
                .tabItem {
                    Image(systemName: "book")
                    Text("History")
                }
        }.accentColor(Color("B1"))
    }
}

struct RootTabView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RootTabView().environmentObject(UserPreferences())
            RootTabView().environmentObject(UserPreferences())
                .colorScheme(.dark)
                .background(Color.black)
        }
    }
}
