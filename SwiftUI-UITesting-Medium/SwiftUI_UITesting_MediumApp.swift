//
//  SwiftUI_UITesting_MediumApp.swift
//  SwiftUI-UITesting-Medium
//
//  Created by Dheeru Neelam on 9/20/21.
//

import SwiftUI

@main
struct SwiftUI_UITesting_MediumApp: App {
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    init() {
        loadEnvironmentRelatedServices()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    private func loadEnvironmentRelatedServices() {
        processLaunchArguments()
    }
    
    private func processLaunchArguments() {
        var arguments = ProcessInfo.processInfo.arguments
        arguments.removeFirst() // First argument is thec path
        processCustomLaunchArguments(arguments)
    }
    
    private func processCustomLaunchArguments(_ arguments: [String]) {
        arguments.forEach {
            switch $0 {
            case "NoAnimations":
                UIView.setAnimationsEnabled(false)
                
            default:
                print("arguments not handled")
            }
        }
    }
}

//class AppDelegate: NSObject, UIApplicationDelegate {
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        put custom code here
//        return true
//    }
//}
