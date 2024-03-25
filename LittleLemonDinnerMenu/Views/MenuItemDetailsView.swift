//
//  MenuItemDetailsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Іван Штурхаль on 25.03.2024.
//

import SwiftUI

struct MenuItemDetailsView: View {
    
    var menuItem: MenuItem
    
    var body: some View {
        NavigationStack {
            Image("Little Lemon logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack {
                Text("Price")
                    .fontWeight(.bold)
                Text(String(format: "%.2F", menuItem.price))
                Text("Ordered: ")
                    .fontWeight(.bold)
                Text("\(menuItem.ordersCount)")
                Text("Ingridients: ")
                    .fontWeight(.bold)
                ForEach(menuItem.ingredient, id: \.self) {
                    Text($0.rawValue)
                }
            }
            .padding(20)
        }
    }
}

#Preview {
    MenuItemDetailsView(menuItem: MenuItem(price: 10.00, title: "Food", menuCategory: .food, ordersCount: 12, ingredient: [.non]))
}
