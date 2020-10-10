//
//  Title.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/7/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct Title: View {
    let title: String
    var body: some View {
        HStack {
            VStack() {
                Text(title)
                    .font(.system(size: 30, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
            }
            Spacer()
        }
    }
}

