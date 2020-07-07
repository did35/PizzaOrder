//
//  MenuListView.swift
//  Pizza
//
//  Created by Didier Delhaisse on 05/07/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import SwiftUI

struct MenuListView: View {
    var menu = MenuModel().menu
    var body: some View {
        VStack {
            ListHeaderView(text: "Menu")
            NavigationView {
                List(menu) { item in
                    NavigationLink(destination: MenuDetailView(menuItem: item)){
                        MenuRowVue(menuItem: item)
                        .listRowInsets(EdgeInsets())
                    }
                }
            .navigationBarTitle("Pizza Order")
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}

