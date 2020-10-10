//
//  SmallArrowButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/19/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct SmallArrowButton: View {
    let back: Bool
    var body: some View {
        Image("Back Arrow").renderingMode(.template)
            .rotation3DEffect(back ? .degrees(0) : .degrees(180), axis: (x: 0, y: 1, z: 0))
            .foregroundColor(.black)
            .frame(width: 40, height: 40)
            .background(Color("BasicLayerColor"))
            .cornerRadius(9)
    }
}
