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
            backgroundColor(.blue)
            VStack {
                HStack(spacing: 10) {
                    Button(action: {
                        isMenuShowing.toggle()
                        isPresentedSettings.toggle()
                    }) {
                        Text("Close")
                    }
                    Text("Settings")
                    Spacer()
                }
                .foregroundColor(.gray)

                VStack(alignment: .leading, spacing: 30.0) {
                    Form {
                        Section(header: Text("Level Settings")) {
                            HStack {
                                Text("Set Level")
                            }
                        }
                        Section(header: Text("Notifications Settings")) {
                            HStack {
                                Text("Set Time")
                            }
                        }
                    }
                }
            }
        }
    }
}
