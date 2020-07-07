//
//  SelectedImageViewTitle.swift
//  Pizza
//
//  Created by Didier Delhaisse on 07/07/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import SwiftUI

struct SelectedImageViewTitle: View {
    var body: some View {
        HStack {
            Image(systemName: "chevron.up.square")
                .font(.title)
                .foregroundColor(Color("G1"))
                .padding()
            Spacer()
            Text("Pizza History")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color("G1"))
                .offset(x: -10, y: 0)
        }.background(Color("G4"))
    }
}

struct SelectedImageViewTitle_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageViewTitle()
    }
}
