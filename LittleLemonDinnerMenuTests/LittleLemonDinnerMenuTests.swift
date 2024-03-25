//
//  LittleLemonDinnerMenuTests.swift
//  LittleLemonDinnerMenuTests
//
//  Created by Іван Штурхаль on 22.03.2024.
//

import XCTest
@testable import LittleLemonDinnerMenu

final class LittleLemonDinnerMenuTests: XCTestCase {
    
    let viewModel = MenuViewViewModel()
    
    func test_checkFoodTitle() {
        let foodTitle = viewModel.foods[0]
        XCTAssertEqual(foodTitle.title, "Food #1")
    }
    
    func test_checkIngredient() {
        let foodIngredient = viewModel.foods[0]
        XCTAssertEqual(foodIngredient.ingredient, [.broccoli,.carrot,.pasta,.spinach,.tomatoSauce])
    }
}


