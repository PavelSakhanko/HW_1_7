//
//  View+backgroundColor.swift
//  Game
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import SwiftUI

extension View {
    func backgroundColor() -> some View {
        Color.blue.opacity(5.0)
            .edgesIgnoringSafeArea(.all)
    }
}
