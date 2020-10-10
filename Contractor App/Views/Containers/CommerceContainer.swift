//
//  CommerceContainer.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/7/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct CommerceContainer: View {
    let icon: String
    let title: String
    let time: String
    let amount: String
    let isPending: Bool
    var body: some View {
        HStack {
            VStack {
                Image(systemName: icon)
                    .foregroundColor(.black)
                    .frame(width: 16, height: 16)
                    .padding(.all, 15)
            }
            .background(Color.white)
            .cornerRadius(9)
            .padding(.horizontal, 15)
            
            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
                
                Text(time)
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.3))
                    .padding(.top, 3)
            }
            .padding(.vertical, 15)
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3) {
                Text("$\(amount)")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
                
                if isPending {
                    Text("Pending")
                        .font(.system(size: 10, weight: .regular, design: .rounded))
                        .padding(.all, 5)
                        .foregroundColor(Color.black.opacity(0.5))
                        .background(Color.black.opacity(0.2))
                        .cornerRadius(4)
                }
                Spacer()
            }
            .padding(.vertical, 15)
            .padding(.trailing, 15)
        }
        .frame(width: screen.width - 50)
        .background(Color("BasicLayerColor"))
        .cornerRadius(14)
    }
}

