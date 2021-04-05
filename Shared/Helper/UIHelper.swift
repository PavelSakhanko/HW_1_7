//
//  UIHelper.swift
//  Game
//
//  Created by Pavel Sakhanko on 5.04.21.
//

import Foundation

struct UIHelper {
    static func checkOS() {
        #if os(watchOS)
            UserDefaults.standard.set(0, forKey: "osType")
        #elseif os(iOS)
            UserDefaults.standard.set(1, forKey: "osType")
        #elseif os(macOS)
            UserDefaults.standard.set(2, forKey: "osType")
        #else
            print("OMG, it's that mythical new Apple product!!!")
        #endif
    }
}
