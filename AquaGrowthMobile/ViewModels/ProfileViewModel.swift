//
//  ProfileViewModel.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/15/24.
//

import Foundation
import Foundation
import FirebaseAuth
class ProfileViewViewModel: ObservableObject{
    
    init(){}
    
    func logOut(){
        do{
            try Auth.auth().signOut()
        }
        catch{
            print(error)
        }
    }
}
