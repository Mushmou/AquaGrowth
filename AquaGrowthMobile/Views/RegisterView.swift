//
//  RegisterView.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/14/24.
//

import Foundation
import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    var body: some View {
        ZStack{
            VStack {
                Spacer()
                Text("Register an account")
                    .font(.system(size: 50))
                    .bold()
                TextField("Username", text: $viewModel.username)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(.black.opacity(0.05))
                    .cornerRadius(10)
                TextField("Email", text: $viewModel.email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(.black.opacity(0.05))
                    .cornerRadius(10)
                SecureField("Password", text: $viewModel.password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(.black.opacity(0.05))
                    .cornerRadius(10)
                Button("Log in"){
                    viewModel.register()
                }
                .frame(width: 300, height: 50)
                .foregroundColor(.white)
                .background(.green.opacity(20))
                .cornerRadius(10)
                Spacer()
            }
        }
    }
}

#Preview {
    RegisterView()
}
