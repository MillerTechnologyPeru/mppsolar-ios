//
//  AppInfo.swift
//  MPPSolar
//
//  Created by Alsey Coleman Miller on 17/04/21.
//

import Foundation

public struct AppInfo {
    
    private let values: [String: Any]
}

public extension AppInfo {
        
    var version: String? {
        return values["CFBundleVersion"] as? String
    }
    
    var shortVersion: String? {
        return values["CFBundleShortVersionString"] as? String
    }
}

extension AppInfo: CustomStringConvertible {
    
    public var description: String {
        return (values as NSDictionary).description
    }
}

public extension AppInfo {
    
    init(bundle: Bundle = .main) {
        self.values = bundle.infoDictionary ?? [:]
    }
}
