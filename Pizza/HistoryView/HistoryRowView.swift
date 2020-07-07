//
//  HistoryRowView.swift
//  Pizza
//
//  Created by Didier Delhaisse on 05/07/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import SwiftUI

struct HistoryRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image("1_100w")
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.8), radius: 5, x: 2, y: 2)
            Text("Huli Chicken")
                .font(.title)
            Spacer()
        }.overlay(Image(systemName: "chevron.right.square")
            .font(.title)
            .foregroundColor(Color("G3"))
            .padding(),
                  alignment: .trailing)
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
