//
//  MainView.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/3/24.
//

import SwiftUI
// THIS IS THE MAIN VIEW -> THIS WILL NEED TO BE IMPLEMENTED TO ADD
// HOME, Bluetooth, Discover, Plants page ETC
struct MainView: View {
    @StateObject private var myBluetooth = BluetoothViewModel()

    var body: some View {
        TabView{
            HomeView().tabItem {
                Label("Home", systemImage: "Home")
            }
            PlantView(curr_bluetooth: myBluetooth).tabItem{
                Label("Plants", systemImage: "Star")
            }
            DiscoverView().tabItem{
                Label("Discover", systemImage: "Star")
            }
            PeripheralView(bluetoothViewModel: myBluetooth).tabItem {
                Label("Peripheral", systemImage: "Star")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
