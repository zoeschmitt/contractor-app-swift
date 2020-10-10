//
//  GenericButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/11/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct GenericButton: View {
    let icon: String
    var body: some View {
        Image(systemName: icon).renderingMode(.template)
            .font(.system(size: 16, weight: .bold, design: .rounded))
            .foregroundColor(.black)
            .frame(width: 50, height: 50)
            .background(Color("BasicLayerColor"))
            .cornerRadius(9)
    }
}
