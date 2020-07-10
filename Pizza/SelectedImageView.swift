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
            Image(image)
            .resizable()
            .scaledToFit()
                //.frame(height: 150)
                .cornerRadius(30)
                .shadow(color: .black, radius: 10, x: 5, y: 5)
        }
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
            SelectedImageView(image: "1_250w")
    }
}
