//
//  SelectedImageView.swift
//  Pizza
//
//  Created by Didier Delhaisse on 07/07/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import SwiftUI

struct SelectedImageView: View {
    var image: String
    var body: some View {
        VStack {
            ContentHeaderView()
            SelectedImageViewTitle()
            Image(image)
            .resizable()
            .scaledToFit()
                .cornerRadius(30)
                .shadow(color: Color.black.opacity(0.8), radius: 5, x: 3, y: 3)
            .padding(1)
            HistoryListView()
        }
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SelectedImageView(image: "1_250w")
            SelectedImageView(image: "1_250w")
                .colorScheme(.dark)
                .background(Color.black)
        }
    }
}
