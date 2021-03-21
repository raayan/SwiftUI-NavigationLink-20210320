//
//  ContentView.swift
//  bug_NavigationViewFlipsAround
//
//  Created by Raayan Pillai on 3/20/21.
//

import SwiftUI

struct ContentView: View {
    let parent: String
    let depth: Int
    let items = 0..<10

    var body: some View {
        ScrollView {
            VStack {
                Text("Inside \(parent)")
                ForEach(items) { qq in
                    let item = 10*depth + qq
                    if (item % 5 == 0) {
                        let text = "Folder \(item)"
                        NavigationLink(text, destination: ContentView(parent: text, depth: depth+1).navigationTitle(text))
                            .isDetailLink(false)
                    } else {
                        let text = "Item \(item)"
                        NavigationLink(text, destination: Text(text).navigationTitle(text))
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView(parent: "Root", depth: 0)
        }
    }
}
