//
//  ClipboardCleanerApp.swift
//  ClipboardCleaner
//
//  Created by Ma Xueyuan on 2020/10/29.
//

import SwiftUI

@main
struct ClipboardCleanerApp: App {
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase) { (phase) in
            if phase == .active {
                UIPasteboard.general.string = ""
            }
        }
    }
}
