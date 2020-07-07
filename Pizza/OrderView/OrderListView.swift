//
//  OrderListView.swift
//  Pizza
//
//  Created by Didier Delhaisse on 05/07/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    var orderModel: OrderModel
    var body: some View {
        VStack {
            ListHeaderView(text: "Your Order")
            List(orderModel.orders){item in
                OrderRowView(orderItem: item)
            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}


