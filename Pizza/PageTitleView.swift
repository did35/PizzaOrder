//
//  PageTitleView.swift
//  Pizza
//
//  Created by Didier Delhaisse on 05/07/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import SwiftUI

struct PageTitleView: View {
    var title: String
    var isDisplayingOrders: Bool? = nil
    
    var body: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.trailing)
        }.overlay(
            Image(systemName: "chevron.up.square")
                .rotationEffect(isDisplayingOrders ?? false ? Angle(degrees: 0.0) : Angle(degrees: 180.0))
                .animation(.easeInOut(duration: 0.5))
                .font(.title)
                .foregroundColor(isDisplayingOrders != nil ? Color("G1") : .clear)
                .padding(),
            alignment: .leading
        )
        .background(Color("G4"))
        .foregroundColor(Color("G1"))
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza", isDisplayingOrders: true)
    }
}
