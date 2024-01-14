//
//  PlantView.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/3/24.
//

import Foundation
import SwiftUI


struct PlantView: View {
    @ObservedObject var plant_viewModel: BluetoothViewModel
    
    
    
    var body: some View {
        let my_peripheral = plant_viewModel.bluetoothModel.connectedPeripheral
        VStack {
            Text("Plant View")
            if my_peripheral != nil{
                Text("Status: \(plant_viewModel.bluetoothModel.connectedPeripheral!)")
            }
            if plant_viewModel.bluetoothModel.ledCharacteristicValue != nil{
                Text("Value: \(plant_viewModel.bluetoothModel.ledCharacteristicValue!)")
            }
            Button("Read LED Characteristic") {
                if (my_peripheral != nil) {
                    plant_viewModel.readLEDCharacteristic()
                }
            }
            
            if plant_viewModel.bluetoothModel.moistureCharacteristicValue != nil{
                Text("Value: \(plant_viewModel.bluetoothModel.moistureCharacteristicValue!)")
            }
            Button("Read Moisture Characteristic") {
                if (my_peripheral != nil) {
                    plant_viewModel.readMoistureCharacteristic()
                }
            }
            if plant_viewModel.bluetoothModel.humidityCharacteristicValue != nil{
                Text("Value: \(plant_viewModel.bluetoothModel.humidityCharacteristicValue!)")
            }
            Button("Read Humidity Characteristic") {
                if (my_peripheral != nil) {
                    plant_viewModel.readHumidityCharacteristic  ()
                }
            }
            if plant_viewModel.bluetoothModel.fahrenheitCharacteristicValue != nil{
                Text("Value: \(plant_viewModel.bluetoothModel.fahrenheitCharacteristicValue!)")
            }
            Button("Read Fahrenheit Characteristic") {
                if (my_peripheral != nil) {
                    plant_viewModel.readFahrenheitCharacteristic()
                }
            }
            if plant_viewModel.bluetoothModel.heatIndexCharacteristicValue != nil{
                Text("Value: \(plant_viewModel.bluetoothModel.heatIndexCharacteristicValue!)")
            }
            Button("Read Heat Index Characteristic") {
                if (my_peripheral != nil) {
                    plant_viewModel.readHeatIndexCharacteristic()
                }
            }
        }
    }
}


struct PlantView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = BluetoothViewModel()  // Create an instance of BluetoothViewModel
        return PlantView(plant_viewModel: viewModel)
    }
}
