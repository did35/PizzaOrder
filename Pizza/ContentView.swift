//
//  ContentView.swift
//  Pizza
//
//  Created by Didier Delhaisse on 04/07/2020.
//  Copyright © 2020 Didier Delhaisse. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Huli pizza company")
            Image("Surf")
            Text("Order pizza")
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
