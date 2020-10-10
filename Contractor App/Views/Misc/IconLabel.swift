//
//  IconLabel.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/8/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct IconLabel: View {
    let icon: String
    let title: String
    let messageIcon: Bool
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.black)
                .frame(width: 45, height: 45)
                .background(Color("BasicLayerColor"))
                .cornerRadius(9)
                .padding(.trailing, 10)
            
            Text(title)
                .font(.system(size: 18, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
                .padding(.trailing, 5)
            
            if messageIcon == true {
                Image(systemName: "bubble.left.fill")
                    .font(.system(size: 20, weight: .regular))
                    .foregroundColor(.black)
            }
            
            Spacer()
        }
        .padding(.horizontal, 25)
    }
}
