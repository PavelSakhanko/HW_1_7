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

//enum OperatingSystem {
//    case macOS
//    case iOS
//    case tvOS
//    case watchOS
//
//    #if os(macOS)
//    static let current = macOS
//    #elseif os(iOS)
//    static let current = iOS
//    #elseif os(tvOS)
//    static let current = tvOS
//    #elseif os(watchOS)
//    static let current = watchOS
//    #else
//    #error("Unsupported platform")
//    #endif
//}

//extension View {
//    @ViewBuilder
//        func ifOS<Content: View>(
//            _ operatingSystems: OperatingSystem...,
//            modifier: (Self) -> Content
//        ) -> some View {
//            if operatingSystems.contains(OperatingSystem.current) {
//                modifier(self)
//            } else {
//                self
//            }
//        }
//
//    func modify<T: View>(@ViewBuilder modifier: (Self) -> T) -> T {
//        modifier(self)
//    }
//}


//        #if targetEnvironment(macCatalyst)
//            return theList.listStyle(SidebarListStyle())
//            #else
//            return theList.navigationViewStyle(DefaultNavigationViewStyle())
//            #endif
        
