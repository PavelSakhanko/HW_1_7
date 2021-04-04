//
//  ContentView.swift
//  Shared
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        ZStack {
            backgroundColor()
            VStack {
                MenuView(
                    playAction: { print("1") },
                    settingsAction: { print("2") },
                    showLeaderAction: { print("3") }
                )
            }
        }
    }
}
