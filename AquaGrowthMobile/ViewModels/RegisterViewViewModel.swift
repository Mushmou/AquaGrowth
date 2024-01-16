//
//  RegisterViewViewModel.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/14/24.
//

import Foundation
import FirebaseAuth

class RegisterViewViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var username = ""
    init(){}
    
    
    // Basic Login Functionality
    func register(){
        guard validate() else{
            return
        }
        print("Validated")
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
          // Perform something here?
        }
    }
    
    //We need to implement a validation before logging in. Maybe some simple error checking
    private func validate() -> Bool{
        guard !username.trimmingCharacters(in: .whitespaces).isEmpty,
              !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else{
            return false
        }
        
        guard email.contains("@") && email.contains(".") else{
            return false
        }
        
        guard password.count >= 6 else{
            return false //password size
        }
        
        return true
    }
}

