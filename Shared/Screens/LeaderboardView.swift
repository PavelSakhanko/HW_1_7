//
//  LeaderboardView.swift
//  Game
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import SwiftUI

struct LeaderboardView: View {
    
    @Binding var isMenuShowing: Bool
    @Binding var isPresentedLeaderBoard: Bool
    
    var body: some View {
        ZStack {
            backgroundColor(.red)
            VStack {
                HStack {
                    Button(action: {
                        isMenuShowing.toggle()
                        isPresentedLeaderBoard.toggle()
                    }) {
                       Image("cross")
                    }
                    Spacer()
                }
                Spacer()

                HStack {
                    Text("Leaderboard")
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}
