//
//  DiscoverView.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/3/24.
//

import Foundation
import SwiftUI

struct DiscoverView: View {
    @ObservedObject private var discoverViewModel = BluetoothViewModel()
    var body: some View {
        Text("Discover View")
        }
}


#Preview{
    DiscoverView()
}
