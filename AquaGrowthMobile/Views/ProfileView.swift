//
//  ProfileView.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/15/24.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    @StateObject var profile_viewModel = ProfileViewViewModel()
    var body: some View {
        Button("Logout"){
            profile_viewModel.logOut()
        }
        .tint(.red)
    }
}

#Preview{
    ProfileView()
}
