//
//  BackButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/5/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct BackButton: View {
    var body: some View {
        Image("Back Arrow").renderingMode(.template)
            .foregroundColor(.black)
            .frame(width: 47, height: 47)
            .background(Color("BasicLayerColor"))
            .cornerRadius(9)
    }
}

