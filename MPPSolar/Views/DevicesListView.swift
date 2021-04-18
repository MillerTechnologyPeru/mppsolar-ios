//
//  DevicesListView.swift
//  MPPSolar
//
//  Created by Alsey Coleman Miller on 17/04/21.
//

import Foundation
import SwiftUI

struct DevicesListView: View {
    
    @State
    var scanDate: Date
    
    #if os(iOS)
    var body: some View {
        list
        .navigationBarTitle(title)
        //.navigationBarItems(trailing: scanButton)
    }
    #elseif os(macOS)
    var body: some View {
        list
        .navigationTitle(title)
        //.toolbar(content: { scanButton })
    }
    #endif
}

private extension DevicesListView {
    
    var title: String {
        return "Inverters"
    }
    
    var list: some View {
        VStack {
            DeviceRow()
            DeviceRow()
        }
    }
    /*
    var list: some View {
        List(devices) { (device) in
            NavigationLink(
                destination: Text("WIP"),
                label: { DeviceRow(device: device) }
            )
        }
    }
    
    var devices: [String] {
        ["Device 1"]
    }
    
    var scanButton: some View {
        if deviceManager.isScanning {
            return Button("Stop") {
                deviceManager.stopScan()
            }
        } else {
            return Button("Scan") {
                scan()
            }
        }
    }
    
    func scan() {
        deviceManager.scan()
        let scanDate = Date()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.scanDate = scanDate
        }
    }*/
}
