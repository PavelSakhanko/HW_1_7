//
//  GameMechanics.swift
//  Game
//
//  Created by Pavel Sakhanko on 5.04.21.
//

import SwiftUI

enum PossibleResults: String, CaseIterable {
    case win = "Win"
    case lose = "Lose"
}

struct GameMechanics {
    
    static let possibleMoves = ["rock", "paper", "scissors"]
}
