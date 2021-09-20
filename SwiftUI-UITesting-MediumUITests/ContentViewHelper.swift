//
//  ContentViewHelper.swift
//  ContentViewHelper
//
//  Created by Dheeru Neelam on 9/17/21.
//

import Foundation
import XCTest

struct ContentViewHelper {
    static let app = XCUIApplication()
    
    enum StaticText {
        static let titleText = app.staticTexts["Normal Text"]
        static let overriddenTitleText = app.staticTexts["Text Overridden for UI Tests"]
        static let view1Text = app.staticTexts["View - 1"]
        static let view2Text = app.staticTexts["View - 2"]
    }
    
    enum Button {
        static let navigationButton = app.buttons["customButton"]
    }
    
    static func testTitleText() {
        XCTAssertTrue(StaticText.titleText.exists)
    }
    
    static func testOverriddenTitleText() {
        XCTAssertTrue(StaticText.overriddenTitleText.exists)
    }
    
    static func navigateToView1() {
        Button.navigationButton.tap()
        
        XCTAssertTrue(StaticText.view1Text.exists)
    }
    
    static func navigateToView2() {
        Button.navigationButton.tap()
        
        XCTAssertTrue(StaticText.view2Text.exists)
    }
}
