//
//  watchappApp.swift
//  watchapp Watch App
//
//  Created by Simon Kirchner on 10.02.24.
//

import SwiftUI
import WatchConnectivity

@main
struct watchapp_Watch_AppApp: App {
    var body: some Scene {
        WindowGroup {
            CapWatchContentView()
                .onAppear {
                    assert(WCSession.isSupported(), "This sample requires Watch Connectivity support!")
                    WCSession.default.delegate = WatchViewModel.shared
                    WCSession.default.activate()
                }
        }
    }
}
