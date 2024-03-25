//
//  MenuItemsView.swift
//  LittleLemonDinnerMenu
//
//  Created by Іван Штурхаль on 22.03.2024.
//

import SwiftUI

struct MenuItemsView: View {
    
    @StateObject private var viewModel = MenuViewViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                if viewModel.isShowingFood {
                    MenuItemView(menuItems: viewModel.foods, menuCategory: .food).environmentObject(viewModel) }
                if viewModel.isShowingDrinks {
                    MenuItemView(menuItems: viewModel.drinks, menuCategory: .drink).environmentObject(viewModel) }
                if viewModel.isShowingDesserts {
                    MenuItemView(menuItems: viewModel.desserts, menuCategory: .dessert).environmentObject(viewModel)
                }
            }
            .onAppear() {
                viewModel.updateMenu()
            }
            .navigationTitle("Menu")
            .toolbar {
                Button(action: {
                    viewModel.isOpenedOptionView.toggle()
                }, label: {
                    Image(systemName: "slider.vertical.3")
                })
            }
            .sheet(isPresented: $viewModel.isOpenedOptionView) {
                NavigationStack {
                    MenuItemsOptionView().environmentObject(viewModel)
                        .toolbar {
                            Button("Done") {
                                viewModel.updateMenu()
                                viewModel.isOpenedOptionView.toggle()
                            }
                        }
                }
            }
        }
    }
}



#Preview {
    MenuItemsView()
}
