
//
//  ShadowButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/8/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct ShadowButton: View {
    let icon: String
    let title: String
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.black)
                .frame(width: 50, height: 50, alignment: .center)
                .background(Color("BasicLayerColor"))
                .cornerRadius(9)
                .padding(.leading, 10)
                .padding(.vertical, 10)
            
            Text(title)
                .font(.system(size: 16, weight: .semibold, design: .rounded))
                .padding(.leading, 10)
            
            Spacer()
        }
        .frame(width: screen.width - 50)
        .background(Color.white)
        .cornerRadius(9)
        .shadow(color: Color.black.opacity(0.05), radius: 7, x: 0, y: 0)
    }
}
