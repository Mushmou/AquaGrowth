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
    @StateObject private var viewModel = BluetoothViewModel()

    var body: some View {
        TabView{
            HomeView().tabItem {
                Label("Home", systemImage: "house")
            }
            PlantView(plant_viewModel: viewModel).tabItem{
                Label("Plants", systemImage: "person.crop.circle")
            }
            DiscoverView().tabItem{
                Label("Discover", systemImage: "person.crop.circle")
            }
            PeripheralView(peripheral_viewModel: viewModel).tabItem {
                Label("Peripheral", systemImage: "person.crop.circle")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
