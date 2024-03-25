//
//  MenuItemsOptionView.swift
//  LittleLemonDinnerMenu
//
//  Created by Іван Штурхаль on 25.03.2024.
//

import SwiftUI

struct MenuItemsOptionView: View {
    
    @EnvironmentObject var viewModel: MenuViewViewModel
    
    var body: some View {
        NavigationStack {
            List {
                Section("Selected categories") {
                    Toggle(MenuCategory.food.rawValue, isOn: $viewModel.isShowingFood)
                    Toggle(MenuCategory.drink.rawValue, isOn: $viewModel.isShowingDrinks)
                    Toggle(MenuCategory.dessert.rawValue, isOn: $viewModel.isShowingDesserts)
                }
                Picker("Sorted by", selection: $viewModel.sortedBy) {
                    ForEach(SortedBy.allCases, id: \.self) {
                        category in
                        Text(category.rawValue).tag(category)
                    }
                }
            }
            .pickerStyle(.inline)
            .listStyle(.grouped)
        }
        .navigationTitle("Filter")
    }
}

#Preview {
    MenuItemsOptionView().environmentObject(MenuViewViewModel())
}
