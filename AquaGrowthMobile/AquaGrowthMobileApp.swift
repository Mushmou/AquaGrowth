//
//  AquaGrowthMobileApp.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 11/9/23.
//

import FirebaseCore
import SwiftUI

@main
struct AquaGrowthMobileApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
