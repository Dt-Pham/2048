//
//  TileView.swift
//  Game2048
//
//  Created by Duong Pham on 5/2/22.
//

import SwiftUI

struct TileView: View {
    var value: Int
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
            Text("Tile \(value)")
                .foregroundColor(Color.black)
        }
    }
    
    // MARK: - Drawing constants
    private let cornerRadius: CGFloat = 10
}
