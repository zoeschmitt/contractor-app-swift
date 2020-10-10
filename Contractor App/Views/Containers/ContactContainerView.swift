//
//  ContactContainerView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/11/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct ContactContainerView: View {
    let recWidth: CGFloat = 4.3
    let name: String
    let info: String
    var body: some View {
        ZStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(name)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                    
                    Text(info)
                        .font(.system(size: 14, weight: .regular, design: .rounded))
                        .foregroundColor(Color.black.opacity(0.5))
                }
                .padding(.vertical, 20)
                .padding(.leading, 25)
                
                Spacer()
                Button(action: {
                    print("message")
                }) {
                    Image(systemName: "bubble.left.fill")
                        .foregroundColor(.black)
                        .frame(width: 45, height: 45)
                        .background(Color.white)
                        .cornerRadius(9)
                        .padding(.trailing, 20)
                }
            }
            .background(Color("BasicLayerColor"))
            .cornerRadius(14)
            .padding(.vertical, 2)
            
            Rectangle().foregroundColor(.black)
                .background(Color.black)
                .cornerRadius(1.5)
                .frame(width: recWidth)
                .offset(x: -2.15, y: 0)
                .padding(.vertical, 13)
        }
    }
}
