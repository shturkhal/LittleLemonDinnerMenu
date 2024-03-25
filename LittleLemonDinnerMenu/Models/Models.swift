//
//  Models.swift
//  LittleLemonDinnerMenu
//
//  Created by Іван Штурхаль on 22.03.2024.
//

import SwiftUI

enum SortedBy: String, CaseIterable {
    case mostPopular = "Most popular"
    case fromLowPrice = "Price $-$$$"
    case fromAtoZ = "A-Z"
}

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var menuCategory: MenuCategory { get }
    var ordersCount: Int { get set  }
    var ingredient: [Ingredient] { get set }
}

struct MenuItem: Identifiable, Hashable, MenuItemProtocol {
    var id = UUID()
    var price: Double
    var title: String
    var menuCategory: MenuCategory
    var ordersCount: Int
    var ingredient: [Ingredient]
}


