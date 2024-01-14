//
//  HomeView.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/3/24.
//

import Foundation
import SwiftUI


struct HomeView: View {
    @ObservedObject private var home_viewModel = BluetoothViewModel()
    var body: some View {
        Text("Home View")
        }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
