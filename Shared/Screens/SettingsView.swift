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
                HStack {
                    Button(action: {
                        isMenuShowing.toggle()
                        isPresentedSettings.toggle()
                    }) {
                        Text("x")
                         .foregroundColor(.blue)
                         .font(.title2)
                    }
                    Spacer()
                }
                .padding()
                Spacer()

                HStack {
                    Text("Settings")
                        .foregroundColor(.blue)
                }
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
                Spacer()
            }
        }
    }
}
