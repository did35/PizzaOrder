//
//  ConfirmView.swift
//  HuliPizza
//
//  Created by Steven Lipton on 9/13/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI

struct ConfirmView: View {
    var menuID:Int
    @Binding var isPresented: Bool
    @ObservedObject var orderModel:OrderModel
    @Binding var quantity: Int
    @Binding var size: Size
    @State private var comments = ""
    
    ///extracts the menu item name based on `menuID`
    var name:String{
        orderModel.menu(menuID)?.name ?? ""
    }
    
    func addItem(){
        orderModel.add(menuID: menuID, size: size, quantity: quantity, comments: comments)
        isPresented = false
    }
    
    func dismissItem() {
        isPresented = false
    }
    
    var body: some View {
        VStack{
            Text("Confirm Order")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.leading)
            Divider()
            SelectedImageView(image: "\(menuID)_250w")
                // One way to dismiss
//                .onTapGesture(count: 2) {
//                    self.isPresented = false
//            }
                // Second way to dismiss which is more generic
            .gesture(TapGesture(count: 2)
                .onEnded {
                    self.isPresented = false
                }
            )
                .padding(10)
            Divider()
            Text("Confirm your order of \(quantity) \(size.formatted()) \(name) pizza")
                .font(.headline)
            TextField("Add your comment here", text: $comments)
                .background(Color("G2"))
                
            Spacer()
            HStack {
                Button(action: addItem){
                    Text("Add")
                        .font(.title)
                    .padding()
                    .background(Color("G4"))
                    .cornerRadius(10)
                }.padding([.bottom])
                Button(action: dismissItem){
                    Text("Dismiss")
                        .font(.title)
                    .padding()
                    .background(Color("G4"))
                    .cornerRadius(10)
                }.padding([.bottom])
            }
            
        }
        .background(Color("G3"))
        .foregroundColor(Color("IP"))
        .cornerRadius(20)
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(menuID: 0, isPresented: .constant(true), orderModel: OrderModel(), quantity: .constant(1), size: .constant(.small))
    }
}
