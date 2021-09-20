//
//  SwiftUI_UITesting_MediumUITests.swift
//  SwiftUI-UITesting-MediumUITests
//
//  Created by Dheeru Neelam on 9/20/21.
//

import XCTest
import SwiftUI

class SwiftUI_UITesting_MediumUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        app.launchArguments = LaunchArguments.standardForUAT
    }
    
    func testTitleText() {
        app.launch()
        
        ContentViewHelper.testTitleText()
    }
    
    func testOverriddenTitleText() {
        app.launchEnvironment["Override-Label-titleText"] = "true"
        app.launch()

        ContentViewHelper.testOverriddenTitleText()
    }
    
    func testView1Navigation() {
        app.launch()
        
        ContentViewHelper.navigateToView1()
    }
    
    func testView2Navigation() {
        app.launchEnvironment["Override-showView2"] = "true"
        app.launch()
        
        ContentViewHelper.navigateToView2()
    }
}
