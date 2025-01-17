//
//  HistoryDetailView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/18/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct HistoryDetailView: View {
    @State private var isPresented = false
    var historyItem:HistoryItem
    @Binding var imageID:Int
    var body: some View {
        imageID = historyItem.id
        return VStack {
            PageTitleView(title: historyItem.name)
            MapView(latitude: historyItem.latitude, longitude: historyItem.longitude, regionRadius: 1000000)
                .frame(height: 70)
            PresentMapButton(isPresented: $isPresented, historyItem: historyItem)
            ScrollView(showsIndicators: true) {
                Text(historyItem.history)
                .lineLimit(nil)
                //.frame(height:400)
                    .padding(5)
                
            }
            Spacer()
        }
    }
}

struct HistoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryDetailView(historyItem:HistoryModel().historyItems[0], imageID: .constant(0))
    }
}
