//
//  EditButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/14/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct EditButton: View {
    var body: some View {
        Text("Edit")
            .font(.system(size: 15, weight: .semibold, design: .rounded))
            .foregroundColor(.black)
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .overlay(RoundedRectangle(cornerRadius: 9)
            .stroke(Color.black, lineWidth: 2))
    }
}
