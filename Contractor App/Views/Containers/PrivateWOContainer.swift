//
//  PrivateWOContainer.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/11/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct PrivateWOContainer: View {
    let recWidth: CGFloat = 4.3
    let workOrder: String
    let date: String
    var body: some View {
        ZStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    Text(workOrder)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                    HStack {
                        Image(systemName: "clock.fill")
                            .font(.system(size: 14, weight: .semibold))
                            .padding(.trailing, 5)
                            .foregroundColor(.black)
                        
                        Text(date)
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                            .foregroundColor(Color.black.opacity(0.5))
                    }
                }
                .padding(.vertical, 20)
                .padding(.leading, 25)
                
                Spacer()
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
