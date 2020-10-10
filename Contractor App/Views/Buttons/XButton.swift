//
//  XButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/12/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct XButton: View {
    var body: some View {
        HStack {
            Spacer()
            
            Image(systemName: "xmark")
                .font(.system(size: 16, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
                .frame(width: 40, height: 40)
                .background(Color("BasicLayerColor"))
                .cornerRadius(9)
        }
        .padding(.top, 25)
        .padding(.trailing, 25)
        .padding(.bottom, 10)
    }
}
