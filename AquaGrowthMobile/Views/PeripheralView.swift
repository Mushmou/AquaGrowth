//
//  PeripheralView.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/3/24.
//

import Foundation
import SwiftUI

struct PeripheralView: View {
    @ObservedObject var bluetoothViewModel: BluetoothViewModel

    var body: some View {
        NavigationView {
            List(bluetoothViewModel.bluetoothModel.discoveredPeripherals, id: \.self) { peripheral in
                NavigationLink(destination: ConnectView(connect_bluetooth: bluetoothViewModel, my_peripheral: peripheral)) {
                    Text(peripheral.name ?? "Unknown Device")
                }
            }
            .navigationTitle("Peripherals")
        }
    }
}
