//
//  ProfileContainer.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/17/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct ProfileContainer: View {
    let image: String
    let name: String
    var body: some View {
        HStack {
            VStack {
                Image(image)
                    .resizable()
            }
            .frame(width: 75, height: 75)
            .clipShape(Circle())
            .padding(.all, 15)
            
            Text(name)
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
                .padding(.trailing, 15)
            
            Spacer()
        }
        .frame(width: screen.width - 50)
        .background(Color("BasicLayerColor"))
        .cornerRadius(14)
    }
}
