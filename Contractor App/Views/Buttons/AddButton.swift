//
//  AddButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/7/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct AddButton: View {
    var body: some View {
        Image(systemName: "plus").renderingMode(.template)
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .foregroundColor(.black)
            .frame(width: 47, height: 47)
            .background(Color("BasicLayerColor"))
            .cornerRadius(9)
    }
}

