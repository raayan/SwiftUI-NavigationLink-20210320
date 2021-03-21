//
//  bug_NavigationViewFlipsAroundApp.swift
//  bug_NavigationViewFlipsAround
//
//  Created by Raayan Pillai on 3/20/21.
//

import SwiftUI

@main
struct bug_NavigationViewFlipsAroundApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(parent: "Root", depth: 0)
            }
        }
    }
}
