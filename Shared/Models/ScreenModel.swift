//
//  ScreenModel.swift
//  Game
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import Foundation

struct Screen: Identifiable, Hashable {
    let id = UUID().uuidString
    let icon: String
    let screenName: String
}

final class ScreenModel: ObservableObject {
    @Published var screens = [
        Screen(icon: "🚒", screenName: "Play"),
        Screen(icon: "🚒", screenName: "Settings"),
        Screen(icon: "🚒", screenName: "Leaderboard")
    ]
}
