//
//  ContentView.swift
//  SwiftUI-UITesting-Medium
//
//  Created by Dheeru Neelam on 9/20/21.
//

import SwiftUI

struct ContentView: View {
    @State private var navigateToView1 = false
    @State private var navigateToView2 = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.gray.opacity(0.5)
                
                VStack {
                    getTitleText()
                    getButton()
                    setupNavigationLinks()
                }
            }
            .navigationBarTitle("UI Testing")
        }
    }
    
    // MARK: - Views
    
    private func getTitleText() -> some View {
        Text(getTitleText())
            .padding()
    }
    
    private func getButton() -> some View {
        Button {
            handleButtonAction()
        } label: {
            Text("Navigate to New View")
        }
        .accessibilityIdentifier("customButton")
    }
    
    private func setupNavigationLinks() -> some View {
        VStack {
            NavigationLink("", isActive: $navigateToView1) {
                View1()
            }
            
            NavigationLink("", isActive: $navigateToView2) {
                View2()
            }
        }
    }
    
    // MARK: - Helper methods
    
    private func getTitleText() -> String {
        if TestDetector.isRunningUITests(), TestDetector.shouldOverrideTitleText() {
            return "Text Overridden for UI Tests"
        }
        return "Normal Text"
    }
    
    private func handleButtonAction() {
        if TestDetector.isRunningUITests(), TestDetector.shouldShowView2() {
            navigateToView2 = true
            return
        }
        
        if didMeetCondition() {
            navigateToView1 = true
        } else {
            navigateToView2 = true
        }
    }
    
    private func didMeetCondition() -> Bool {
        return true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

