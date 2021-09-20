//
//  View1-View2.swift
//  View1-View2
//
//  Created by Dheeru Neelam on 9/17/21.
//

import Foundation
import SwiftUI

struct View1: View {
    var body: some View {
        ZStack {
            Color.red
            Text("View - 1")
        }
    }
}

struct View2: View {
    var body: some View {
        ZStack {
            Color.yellow
            Text("View - 2")
        }
    }
}
