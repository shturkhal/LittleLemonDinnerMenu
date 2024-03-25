//
//  ViewModels.swift
//  LittleLemonDinnerMenu
//
//  Created by Іван Штурхаль on 22.03.2024.
//

import SwiftUI

class MenuViewViewModel: ObservableObject {
    
    @Published var isOpenedOptionView = false
    @Published var isShowingDrinks = true
    @Published var isShowingDesserts = true
    @Published var isShowingFood = true
    @Published var sortedBy = SortedBy.fromAtoZ
   /// 12 items
    @Published var foods: [MenuItem] = [
        MenuItem(price: 11.00, title: "Food #1", menuCategory: .food, ordersCount: 01, ingredient: [.broccoli,.carrot,.pasta,.spinach,.tomatoSauce]),
        MenuItem(price: 12.00, title: "Food #2", menuCategory: .food, ordersCount: 02, ingredient: [.broccoli,.carrot,.pasta,.spinach]),
        MenuItem(price: 13.00, title: "Food #3", menuCategory: .food, ordersCount: 03, ingredient: [.broccoli,.carrot,.pasta]),
        MenuItem(price: 14.00, title: "Food #4", menuCategory: .food, ordersCount: 04, ingredient: [.broccoli,.carrot]),
        MenuItem(price: 15.00, title: "Food #5", menuCategory: .food, ordersCount: 05, ingredient: [.broccoli]),
        MenuItem(price: 16.00, title: "Food #6", menuCategory: .food, ordersCount: 06, ingredient: [.tomatoSauce]),
        MenuItem(price: 17.00, title: "Food #7", menuCategory: .food, ordersCount: 07, ingredient: [.spinach]),
        MenuItem(price: 18.00, title: "Food #8", menuCategory: .food, ordersCount: 08, ingredient: [.pasta]),
        MenuItem(price: 19.00, title: "Food #9", menuCategory: .food, ordersCount: 09, ingredient: [.carrot]),
        MenuItem(price: 20.00, title: "Food #10", menuCategory: .food, ordersCount: 10, ingredient: [.broccoli]),
        MenuItem(price: 21.00, title: "Food #11", menuCategory: .food, ordersCount: 11, ingredient: [.tomatoSauce,.broccoli]),
        MenuItem(price: 22.00, title: "Food #12", menuCategory: .food, ordersCount: 12, ingredient: [.carrot,.pasta]),
    ]
    /// 8 items
    @Published var drinks: [MenuItem] = [
        MenuItem(price: 11.00, title: "Drink #1", menuCategory: .drink, ordersCount: 01, ingredient: [.non]),
        MenuItem(price: 12.00, title: "Drink #2", menuCategory: .drink, ordersCount: 02, ingredient: [.non]),
        MenuItem(price: 13.00, title: "Drink #3", menuCategory: .drink, ordersCount: 03, ingredient: [.non]),
        MenuItem(price: 14.00, title: "Drink #4", menuCategory: .drink, ordersCount: 04, ingredient: [.non]),
        MenuItem(price: 15.00, title: "Drink #5", menuCategory: .drink, ordersCount: 05, ingredient: [.non]),
        MenuItem(price: 16.00, title: "Drink #6", menuCategory: .drink, ordersCount: 06, ingredient: [.non]),
        MenuItem(price: 17.00, title: "Drink #7", menuCategory: .drink, ordersCount: 07, ingredient: [.non]),
        MenuItem(price: 18.00, title: "Drink #8", menuCategory: .drink, ordersCount: 08, ingredient: [.non]),
    ]
    /// 4 items
    @Published var desserts: [MenuItem] = [
        MenuItem(price: 11.00, title: "Dessert #1", menuCategory: .dessert, ordersCount: 01, ingredient: [.non]),
        MenuItem(price: 12.00, title: "Dessert #2", menuCategory: .dessert, ordersCount: 02, ingredient: [.non]),
        MenuItem(price: 13.00, title: "Dessert #3", menuCategory: .dessert, ordersCount: 04, ingredient: [.non]),
        MenuItem(price: 14.00, title: "Dessert #4", menuCategory: .dessert, ordersCount: 05, ingredient: [.non]),
    ]
    
    func updateMenu() {
        
        switch sortedBy {
        case .mostPopular:
            foods.sort() { $0.ordersCount > $1.ordersCount }
            drinks.sort() { $0.ordersCount > $1.ordersCount }
            desserts.sort() { $0.ordersCount > $1.ordersCount }
        case .fromLowPrice:
            foods.sort() { $0.price > $1.price }
            drinks.sort() { $0.price > $1.price }
            desserts.sort() { $0.price > $1.price }
        case .fromAtoZ:
            foods.sort() { $0.title > $1.title }
            drinks.sort() { $0.title > $1.title }
            desserts.sort() { $0.title > $1.title }
        }
        
    }
    
    
    
    
//    func sortedByTitle(lhs: MenuItem, rhs: MenuItem) -> Bool {
//        let lhsTitle = lhs.title.split(separator: " ")
//        let rhsTitle = rhs.title.split(separator: " ")
//        
//        let lhsNumber = Int(lhsTitle[lhsTitle.count - 1]) ?? 0
//        let rhsNumber = Int(rhsTitle[rhsTitle.count - 1]) ?? 0
//        
//        if lhsNumber != rhsNumber {
//            return lhsNumber < rhsNumber
//        } else {
//            return lhs.title < rhs.title
//        }
//    }
}
