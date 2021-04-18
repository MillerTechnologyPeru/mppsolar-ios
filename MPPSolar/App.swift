//
//  MPPSolarApp.swift
//  MPPSolar
//
//  Created by Alsey Coleman Miller on 17/04/21.
//

import SwiftUI

@main
struct MPPSolarApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                DevicesListView(scanDate: Date())
                Text("Scan for nearby devices")
            }
            .onAppear {
                _ = Self.appLaunch
            }
        }
    }
}

private extension MPPSolarApp {
    
    static let appLaunch: () = {
        // print version info
        let appInfo = AppInfo()
        if let version = appInfo.shortVersion,
           let build = appInfo.version {
            print("Launching MPPSolar v\(version) (\(build))")
        }
        
    }()
}
