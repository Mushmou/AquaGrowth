//
//  PlantView.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/3/24.
//

import Foundation
import SwiftUI


struct PlantView: View {
    @ObservedObject var curr_bluetooth: BluetoothViewModel
    var body: some View {
        let my_peripheral = curr_bluetooth.bluetoothModel.connectedPeripheral
        VStack {
            Text("Plant View")
            if my_peripheral != nil{
                Text("Status: \(curr_bluetooth.bluetoothModel.connectedPeripheral!)")
            }
            if curr_bluetooth.bluetoothModel.ledCharacteristicValue != nil{
                Text("Value: \(curr_bluetooth.bluetoothModel.ledCharacteristicValue!)")
            }
            Button("Read LED Characteristic") {
                if (my_peripheral != nil) {
                    curr_bluetooth.readLEDCharacteristic()
                }
            }
            
            if curr_bluetooth.bluetoothModel.moistureCharacteristicValue != nil{
                Text("Value: \(curr_bluetooth.bluetoothModel.moistureCharacteristicValue!)")
            }
            Button("Read Moisture Characteristic") {
                if (my_peripheral != nil) {
                    curr_bluetooth.readMoistureCharacteristic()
                }
            }
            if curr_bluetooth.bluetoothModel.humidityCharacteristicValue != nil{
                Text("Value: \(curr_bluetooth.bluetoothModel.humidityCharacteristicValue!)")
            }
            Button("Read Humidity Characteristic") {
                if (my_peripheral != nil) {
                    curr_bluetooth.readHumidityCharacteristic  ()
                }
            }
            if curr_bluetooth.bluetoothModel.fahrenheitCharacteristicValue != nil{
                Text("Value: \(curr_bluetooth.bluetoothModel.fahrenheitCharacteristicValue!)")
            }
            Button("Read Fahrenheit Characteristic") {
                if (my_peripheral != nil) {
                    curr_bluetooth.readFahrenheitCharacteristic()
                }
            }
            if curr_bluetooth.bluetoothModel.heatIndexCharacteristicValue != nil{
                Text("Value: \(curr_bluetooth.bluetoothModel.heatIndexCharacteristicValue!)")
            }
            Button("Read Heat Index Characteristic") {
                if (my_peripheral != nil) {
                    curr_bluetooth.readHeatIndexCharacteristic()
                }
            }
        }
    }
}
