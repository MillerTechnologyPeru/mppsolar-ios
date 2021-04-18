//
//  MPPSolarApp.swift
//  MPPSolar
//
//  Created by Alsey Coleman Miller on 17/04/21.
//

import Foundation
import SwiftUI

@main
struct MPPSolarApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    let _ = Self.appLaunch
                }
        }
    }
}

private extension MPPSolarApp {
    
    static let appLaunch: () = {
        
    }()
}
