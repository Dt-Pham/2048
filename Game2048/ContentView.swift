//
//  ContentView.swift
//  Game2048
//
//  Created by Duong Pham on 4/29/22.
//

import SwiftUI

struct ContentView: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 4)
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach((0...15), id: \.self) { i in
                TileView(value: i)
                    .frame(width: 50, height: 50)
            }
        }
        .frame(width: windowWidth, height: windowHeight)
    }
    
    // MARK: - fixed window size
    let windowWidth : CGFloat = 720
    let windowHeight : CGFloat = 900
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
