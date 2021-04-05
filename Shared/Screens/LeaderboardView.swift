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
                HStack {
                    Button(action: {
                        isMenuShowing.toggle()
                        isPresentedLeaderBoard.toggle()
                    }) {
                       Text("x")
                        .foregroundColor(.red)
                        .font(.title2)
                    }
                    Spacer()
                }
                .padding()
                HStack {
                    Text("Leaderboard")
                        .foregroundColor(.red)
                }
                
                List(users.users, id: \.id) { user in
                    HStack {
                        Text(user.icon)
                        Text(user.name)
                        Spacer()
                        Text("Score: \(user.score)")
                    }
                }

                Spacer()
            }
        }
    }
}
