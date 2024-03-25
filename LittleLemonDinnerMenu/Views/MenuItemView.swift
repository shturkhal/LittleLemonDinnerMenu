//
//  MenuItemView.swift
//  LittleLemonDinnerMenu
//
//  Created by Іван Штурхаль on 22.03.2024.
//

import SwiftUI

struct MenuItemView: View {
    
    @EnvironmentObject var viewModel: MenuViewViewModel
    var menuItems: [MenuItem]
    var menuCategory: MenuCategory
    private var columnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    init(menuItems: [MenuItem], menuCategory: MenuCategory) {
        self.menuItems = menuItems
        self.menuCategory = menuCategory
    }
    
    var body: some View {
        VStack {
            HStack {
                Text(menuCategory.rawValue)
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
            }
            LazyVGrid(columns: columnGrid) {
                ForEach((menuItems), id: \.self) { menuItem in
                    NavigationLink(destination: MenuItemDetailsView(menuItem: menuItem)) {
                        VStack {
                            Rectangle()
                            Text(menuItem.title)
                        }
                        .frame(height: 120)
                        .foregroundStyle(Color.black)
                    }
                }
            }
        }
        .padding()
    }
}


#Preview {
    MenuItemView(menuItems: MenuViewViewModel().foods, menuCategory: .food)
}
