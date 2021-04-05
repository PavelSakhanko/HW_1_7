//
//  ContentView.swift
//  Shared
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import SwiftUI

struct GameView: View {
    
    @ObservedObject var viewModel: ScreenModel = .init()
    @State private var isPresentedNewGame = false
    @State private var isPresentedSettings = false
    @State private var isPresentedLeaderBoard = false
    @State private var isMenuShowing = true

    var body: some View {
        ZStack {
            backgroundColor(.blue)

            if isMenuShowing {
                MenuView(
                    playAction: {
                        isMenuShowing.toggle()
                        isPresentedNewGame.toggle()
                    },
                    showSettingsAction: {
                        isMenuShowing.toggle()
                        isPresentedSettings.toggle()
                    },
                    showLeaderAction: {
                        isMenuShowing.toggle()
                        isPresentedLeaderBoard.toggle()
                    }
                )
            } else {
                if isPresentedNewGame {
                    NewGameView(
                        isMenuShowing: $isMenuShowing,
                        isPresentedNewGame: $isPresentedNewGame
                    )
                } else if isPresentedSettings {
                    SettingsView(
                        isMenuShowing: $isMenuShowing,
                        isPresentedSettings: $isPresentedSettings
                    )
                } else if isPresentedLeaderBoard {
                    LeaderboardView(
                        isMenuShowing: $isMenuShowing,
                        isPresentedLeaderBoard: $isPresentedLeaderBoard
                    )
                }
            }
        }
    }
}
