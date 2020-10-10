//
//  FilterButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/7/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct FilterButton: View {
    var body: some View {
        Image(systemName: "slider.horizontal.3").renderingMode(.template)
            .font(.system(size: 18, weight: .bold, design: .rounded))
            .foregroundColor(.black)
            .frame(width: 47, height: 47)
            .background(Color("BasicLayerColor"))
            .cornerRadius(9)
    }
}

