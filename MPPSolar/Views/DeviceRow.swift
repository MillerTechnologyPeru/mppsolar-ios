//
//  DeviceRow.swift
//  MPPSolar
//
//  Created by Alsey Coleman Miller on 17/04/21.
//

import Foundation
import SwiftUI

struct DeviceRow: View {
    
    //var id: UUID
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(verbatim: "Solar Inverter")
                .font(.title)
            HStack {
                Text(verbatim: "")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Spacer()
            }
        }
    }
}
