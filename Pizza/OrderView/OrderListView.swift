//
//  OrderListView.swift
//  Pizza
//
//  Created by Didier Delhaisse on 05/07/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import SwiftUI

struct OrderListView: View {
    @ObservedObject var orderModel: OrderModel
    var body: some View {
        VStack {
            
            List {
                Section(header: ListHeaderView(orderModel: self.orderModel, text: "Your Order")) {
                    ForEach(orderModel.orders) { item in
                        OrderRowView(orderItem: item)
                    }
                    .onDelete(perform: delete)
                }
            }
        }
    }
    // You have to write it yourself
    func delete(at offsets: IndexSet) {
        orderModel.orders.remove(atOffsets: offsets)
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView(orderModel: OrderModel())
    }
}


