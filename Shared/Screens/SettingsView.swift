//
//  SettingsView.swift
//  Game
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import SwiftUI

struct SettingsView: View {
    
    @Binding var isMenuShowing: Bool
    @Binding var isPresentedSettings: Bool
    
    var body: some View {
        ZStack {
            backgroundColor(.red)
            VStack {
                HStack {
                    Button(action: {
                        isMenuShowing.toggle()
                        isPresentedSettings.toggle()
                    }) {
                       Image("cross")
                    }
                    Spacer()
                }
                Spacer()

                HStack {
                    Text("Settings")
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}
