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
            backgroundColor(.white)
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

                VStack {
                    NavigationView {
                        VStack(alignment: .leading, spacing: 30.0) {
                            Form {
                                Section(header: Text("Level Settings")) {
                                    NavigationLink(
                                        destination: EmptyView()
                                            .navigationBarTitle("")
                                            .navigationBarHidden(true)
                                    ) {
                                        Text("Set Level")
                                    }
                                }
                                Section(header: Text("Notifications Settings")) {
                                    NavigationLink(
                                        destination: EmptyView()
                                            .navigationBarTitle("")
                                            .navigationBarHidden(true)
                                    ) {
                                        Text("Set Time")
                                    }
                                }
                            }
                        }
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                    }
                    .navigationViewStyle(StackNavigationViewStyle())
                }
            }
        }
    }
}
