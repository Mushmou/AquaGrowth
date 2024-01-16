//
//  ConnectView.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/3/24.
//

//THIS VIEW WILL BE REMOVED SOON

import SwiftUI
import CoreBluetooth
// THIS VIEW IS PART OF PERIPHERAL VIEW its to confirm a connection.
struct ConnectView: View {
    @ObservedObject var connect_bluetooth: BluetoothViewModel
    var my_peripheral: CBPeripheral
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack {
            Button("Connect") {
                connect_bluetooth.connect(peripheral: my_peripheral)
            }
            .padding()

            Button("Disconnect") {
                connect_bluetooth.disconnect(peripheral: my_peripheral)
            }
            .padding()
        }
    }
}

