//
//  GameApp.swift
//  Shared
//
//  Created by Pavel Sakhanko on 4.04.21.
//

import SwiftUI

@main
struct GameApp: App {

    #if os(iOS) || os(watchOS) || os(tvOS)
        @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    #endif

    var body: some Scene {
        WindowGroup {
            GameView()
        }
    }
}

#if os(iOS) || os(watchOS) || os(tvOS)
class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        UIHelper.checkOS()
        return true
    }
}
#endif
