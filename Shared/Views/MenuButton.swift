//
//  MenuButton.swift
//  Game
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import SwiftUI

struct MenuButton: View {

    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
        }
    }
}
