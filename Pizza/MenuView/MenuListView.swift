//
//  MenuListView.swift
//  Pizza
//
//  Created by Didier Delhaisse on 05/07/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import SwiftUI

struct MenuListView: View {
    @Binding var orderModel: OrderModel
    var menu = MenuModel().menu
    var body: some View {
        VStack {
            ListHeaderView(text: "Menu")
            NavigationView {
                List(menu) { item in
                    // you need a $ sign when using your identifier with @Binding
                    NavigationLink(destination: MenuDetailView(orderModel: self.$orderModel, menuItem: item)){
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
        MenuListView(orderModel: .constant(OrderModel()))
    }
}

