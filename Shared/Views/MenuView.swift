//
//  MenuView.swift
//  Game
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import SwiftUI

struct MenuView: View {

    let playAction: () -> Void
    let showSettingsAction: () -> Void
    let showLeaderAction: () -> Void

    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .center, spacing: 30) {
                MenuButton(title: "Play", action: playAction)
                MenuButton(title: "Settings", action: showSettingsAction)
                MenuButton(title: "Leaderboard", action: showLeaderAction)
            }
            Spacer()
        }
    }
}
