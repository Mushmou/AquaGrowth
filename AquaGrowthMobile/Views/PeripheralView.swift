//
//  PeripheralView.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/3/24.
//

import Foundation
import SwiftUI

//struct PeripheralView: View {
//    @ObservedObject var peripheral_viewModel: BluetoothViewModel
//
//    var body: some View {
//        NavigationView {
//            List(peripheral_viewModel.bluetoothModel.discoveredPeripherals, id: \.self) { peripheral in
//                NavigationLink(destination: ConnectView(connect_bluetooth: peripheral_viewModel, my_peripheral: peripheral)) {
//                    Text(peripheral.name ?? "Unknown Device")
//                }
//            }
//            .navigationTitle("Peripherals")
//        }
//    }
//}

struct PeripheralView: View {
    @ObservedObject var peripheral_viewModel: BluetoothViewModel

    var body: some View {
        NavigationView {
            List(peripheral_viewModel.bluetoothModel.discoveredPeripherals, id: \.self) { peripheral in
                HStack {
                    Text(peripheral.name ?? "Unknown Device")
                    Spacer()

                    if peripheral_viewModel.bluetoothModel.connectedPeripheral == peripheral && peripheral_viewModel.bluetoothModel.isConnected {
                        Button("Disconnect") {
                            peripheral_viewModel.disconnect(peripheral: peripheral)
                        }
                        .tint(.red)
                    } else {
                        Button("Connect") {
                            peripheral_viewModel.connect(peripheral: peripheral)
                        }
                        .tint(.green)
                    }
                }
                .padding(8)
            }
            .navigationTitle("Peripherals")
        }
    }
}



struct PeripheralView_Previews: PreviewProvider{
    static var previews: some View {
        let viewModel = BluetoothViewModel()
        PeripheralView(peripheral_viewModel: viewModel)
    }
}
