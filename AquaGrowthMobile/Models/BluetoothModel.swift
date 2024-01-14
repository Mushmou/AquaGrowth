//
//  BluetoothViewModel.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/3/24.
//

import Foundation
import CoreBluetooth

struct BluetoothModel {
    var discoveredPeripherals: [CBPeripheral] = []
    var connectedPeripheral: CBPeripheral?
    var discoveredCharacteristics: [CBCharacteristic] = []
    var ledCharacteristicValue: Data?
    var moistureCharacteristicValue: Data?
    var humidityCharacteristicValue: Data?
    var fahrenheitCharacteristicValue: Data?
    var heatIndexCharacteristicValue: Data?
    var isConnected: Bool = false
}
