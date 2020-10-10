//
//  MainButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/14/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct MainButton: View {
    var title: String
    var color: Color
    var body: some View {
        Text(title)
            .font(.system(size: 18, weight: .semibold, design: .rounded))
            .foregroundColor(.white)
            .frame(width: screen.width - 50)
            .padding(.vertical, 15)
            .background(color)
            .cornerRadius(9)
    }
}
