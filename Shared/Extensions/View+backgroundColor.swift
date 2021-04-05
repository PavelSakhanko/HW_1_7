//
//  View+backgroundColor.swift
//  Game
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import SwiftUI

extension View {
    func backgroundColor(_ color: Color) -> some View {
        color.opacity(5.0)
            .edgesIgnoringSafeArea(.all)
    }
}
