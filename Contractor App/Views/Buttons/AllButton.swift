//
//  AllButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/5/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct AllButton: View {
    let icon: String
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.black)
                .frame(width: 18, height: 18)
                .padding(.trailing, 5)
            
            Text("All")
                .font(.system(size: 18, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        .background(Color("BasicLayerColor"))
        .cornerRadius(9)
    }
}

