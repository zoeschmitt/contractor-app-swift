//
//  EventContainer.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/28/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct EventContainer: View {
//    let title: String
//    let time: String
//    let people: String
    var body: some View {
        HStack {
            VStack {
                Image(systemName: "calendar")
                    .foregroundColor(.black)
                    .frame(width: 16, height: 16)
                    .padding(.all, 15)
            }
            .background(Color.white)
            .cornerRadius(9)
            .padding(.horizontal, 15)
            
            VStack(alignment: .leading, spacing: 3) {
                HStack {
                    Text("Check on Linda's A/C Unit")
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                        .lineLimit(1)
                    
                    Spacer()
                    
                    Text("8:00am")
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                        .foregroundColor(Color.black.opacity(0.3))
                        .lineLimit(1)
                }
                
                Text("With Mark Jackson and Linda Miller")
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.3))
                    .padding(.top, 3)
                    .lineLimit(2)
            }
            .padding(.vertical, 15)
            .padding(.trailing, 15)
            
            Spacer()
            
        }
        .frame(width: screen.width - 50)
        .background(Color("BasicLayerColor"))
        .cornerRadius(14)
    }
}

