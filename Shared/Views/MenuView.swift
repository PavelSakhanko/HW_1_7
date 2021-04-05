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
    
    @State private var isNeedToScale = UserDefaults.standard.integer(forKey: "osType") > 0 ? true : false

    var body: some View {
        VStack {
            Spacer()
            VStack(
                alignment: .center,
                spacing: isNeedToScale ? 30.0 : 5.0
            ) {
                MenuButton(title: "Play", action: playAction)
                MenuButton(title: "Settings", action: showSettingsAction)
                MenuButton(title: "Leaderboard", action: showLeaderAction)
            }
            Spacer()
        }
    }
}
