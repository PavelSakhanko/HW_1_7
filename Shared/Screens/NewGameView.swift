//
//  NewGameView.swift
//  Game
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import SwiftUI

struct NewGameView: View {
    
    let possibleMoves = ["rock", "paper", "scissors"]

    @State private var currentChoiceIndex = ""
    @State private var gameResult = ""
    @State private var gameScore = 0
    @State private var gameRoundCounter = 0
    @State private var roundsLeft = ""
    @State private var startPressed = false
    @State private var isNeedToScale = UserDefaults.standard.integer(forKey: "osType") > 0 ? true : false

    @Binding var isMenuShowing: Bool
    @Binding var isPresentedNewGame: Bool
    
    var body: some View {
        backgroundColor(.blue)
        VStack(spacing: isNeedToScale ? 100.0 : 5.0) {
            VStack {
                HStack {
                    Button(action: {
                        isMenuShowing.toggle()
                        isPresentedNewGame.toggle()
                    }) {
                        Text("Close")
                            .foregroundColor(.white)
                    }
                    if isNeedToScale {
                        Spacer()
                    }
                }
                .padding()
                if isNeedToScale {
                    Spacer()
                }
                HStack {
                    Text("Score: \(gameScore)")
                    Text(gameRoundCounter == 0 || roundsLeft == "0" ? "" : "Rounds: \(11 - gameRoundCounter)")
                }
                .foregroundColor(.white)
            }
            HStack(spacing: 20) {
                showImage()
                Button(action: {
                    startGame()
                }) {
                    Text(gameRoundCounter == 0 || roundsLeft == "0" ? "Start" : "\(gameResult)")
                        .foregroundColor(.white)
                }
            }
            if isNeedToScale {
                Spacer()
            }
            HStack(spacing: isNeedToScale ? 20.0 : 5.0) {
                ForEach(0...2, id: \.self) { buttonId in
                    Button(action: {
                        pressButton(id: buttonId)
                    }) {
                        Image(possibleMoves[buttonId])
                    }.tag(buttonId)
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .foregroundColor(.white)
            if isNeedToScale {
                Spacer()
            }
        }
    }
}

extension NewGameView {
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
        startPressed.toggle()
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
