//
//  TLButton.swift
//  AquaGrowthMobile
//
//  Created by Noah Jacinto on 1/14/24.
//

import Foundation
import SwiftUI

struct TLButton: View{
    let title: String
    let background: Color
    let action: () -> Void
    
    
    var body: some View{
        Button{
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview{
    TLButton(title: "Value", background: .pink, action: {
        //Attempt log in
    })
}

