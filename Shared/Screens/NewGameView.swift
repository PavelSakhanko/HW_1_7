//
//  NewGameView.swift
//  Game
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import SwiftUI

enum PossibleResults: String, CaseIterable {
    case win = "Win"
    case lose = "Lose"
}

struct NewGameView: View {
    
    let possibleMoves = ["rock", "paper", "scissors"]

    @State private var currentChoiceIndex = ""
    @State private var gameResult = ""
    @State private var gameScore = 0
    @State private var gameRoundCounter = 0
    @State private var roundsLeft = ""

    @Binding var isMenuShowing: Bool
    @Binding var isPresentedNewGame: Bool
    
    var body: some View {
        backgroundColor(.blue)
        VStack {
            HStack {
                Button(action: {
                    isMenuShowing.toggle()
                    isPresentedNewGame.toggle()
                }) {
                   Image("cross")
                }
                Spacer()
            }
            VStack {
                Text("Score: \(gameScore)")
                Text(gameRoundCounter == 0 || roundsLeft == "0" ? "New Game !" :
                        "Rounds Left: \(11 - gameRoundCounter)")
                Spacer()

                VStack(spacing: 20) {
                    showImage()
                    
                    Button(action: {
                        startGame()
                    }) {
                        Text(gameRoundCounter == 0 || roundsLeft == "0" ? "Start Game ! " :
                                "Your Must \(gameResult)")
                    }
                }
                Spacer()
            }
            .font(.system(size: 30))
            .foregroundColor(.white)
            
            HStack {
                ForEach(0...2, id: \.self) { buttonId in
                    Button(action: {
                        pressButton(id: buttonId)
                    }) {
                        Image(possibleMoves[buttonId])
                    }.tag(buttonId)
                }
            }
            Spacer()
            
            Spacer()

            HStack {
                Text("New Game")
                    .foregroundColor(.white)
            }
            Spacer()
        }
    }

    private func showImage() -> some View {
        gameRoundCounter == 0 || roundsLeft == "0" ? Image(systemName: "play")
            : Image(possibleMoves[Int(currentChoiceIndex)!])
    }

    private func pressButton(id: Int) {
        updateScore(id: id)
        startGame()
    }

    private func updateScore(id: Int) {
        guard let index = Int(currentChoiceIndex) else { return }
        switch gameResult {
        case PossibleResults.win.rawValue:
            if id > index || id < index && id == 0 && index == 2 {
                gameScore += 1
            } else {
                gameScore -= 1
            }
        case PossibleResults.lose.rawValue:
            if id < index || id > index && id == 2 && index == 0 {
                gameScore += 1
            } else {
                gameScore -= 1
            }
        default:
            break
        }
    }

    private func startGame() {
        gameResult = PossibleResults.allCases.randomElement()!.rawValue
        randomHandForGame()
        getRandomImageIndex()
        gameRoundCounter += 1
        roundsLeft = String(11 - gameRoundCounter)
    }

    private func randomHandForGame() {
        let imageNumber = possibleMoves.randomElement()!

        for (index, value) in possibleMoves.enumerated() {
            if value == imageNumber {
                currentChoiceIndex = String(index)
            }
        }
    }

    private func getRandomImageIndex() {
        if currentChoiceIndex != "" {
            guard let index = Int(currentChoiceIndex) else { return }
            currentChoiceIndex = "\(index)"
        }
    }
}
