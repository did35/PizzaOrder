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
    var body: some View {
        Text(title)
            .font(.largeTitle)
            .fontWeight(.light)
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza")
    }
}
