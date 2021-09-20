//
//  LaunchArguments.swift
//  LaunchArguments
//
//  Created by Dheeru Neelam on 9/20/21.
//

import Foundation

enum LaunchArguments {
    static let isRunningUITests = "isRunningUITests"
    static let noAnimations = "NoAnimations"
    
    static let standardForUAT = [noAnimations, isRunningUITests]
}
