//
//  UserModel.swift
//  Game
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import Foundation

struct User: Identifiable, Hashable {
    let id = UUID().uuidString
    let icon: String
    let name: String
    let score: Int
}

final class UserModel: ObservableObject {
    @Published var users = [
        User(icon: "😄", name: "Masha", score: 8),
        User(icon: "😉", name: "Pasha", score: 5),
        User(icon: "🤪", name: "Batman", score: 9)
    ]
}
