//
//  GameApp.swift
//  watchOS Extension
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import SwiftUI

@main
struct GameApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                GameView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
