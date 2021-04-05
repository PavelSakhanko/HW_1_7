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
    
    @ObservedObject var users = UserModel()
    
    var body: some View {
        ZStack {
            backgroundColor(.white)
            VStack {
                HStack(spacing: 10) {
                    Button(action: {
                        isMenuShowing.toggle()
                        isPresentedLeaderBoard.toggle()
                    }) {
                        Text("Close")
                    }
                    Text("Leaders")
                    Spacer()
                }
                .foregroundColor(.gray)
                VStack {
                    List(users.users, id: \.id) { user in
                        HStack {
                            Text(user.icon)
                            Text(user.name)
                            Spacer()
                            Text("Score: \(user.score)")
                        }
                    }
                }
            }
        }
    }
}
