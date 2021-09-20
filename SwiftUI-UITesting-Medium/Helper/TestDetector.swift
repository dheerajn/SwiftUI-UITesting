//
//  TestDetector.swift
//  TestDetector
//
//  Created by Dheeru Neelam on 9/20/21.
//

import Foundation

class TestDetector {
    private enum Keys: String {
        case shouldOverrideTitleText = "Override-Label-titleText"
        case showView2 = "Override-showView2"
    }
    
    static func isRunningUITests() -> Bool {
        return ProcessInfo.processInfo.arguments.contains("isRunningUITests")
    }
    
    private static func environmentVariable(for key: Keys) -> String? {
        return ProcessInfo.processInfo.environment[key.rawValue]
    }
    
    static func shouldOverrideTitleText() -> Bool {
        guard isRunningUITests() else { return false }
        return Bool(environmentVariable(for: .shouldOverrideTitleText) ?? "") ?? false
    }
    
    static func shouldShowView2() -> Bool {
        guard isRunningUITests() else { return false }
        return Bool(environmentVariable(for: .showView2) ?? "") ?? false
    }
}
