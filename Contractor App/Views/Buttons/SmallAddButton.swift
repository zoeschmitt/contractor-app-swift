//
//  SmallAddButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/11/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        Image(systemName: "plus").renderingMode(.template)
            .font(.system(size: 18, weight: .semibold, design: .rounded))
            .foregroundColor(.black)
            .frame(width: 40, height: 40)
            .background(Color("BasicLayerColor"))
            .cornerRadius(9)
    }
}

