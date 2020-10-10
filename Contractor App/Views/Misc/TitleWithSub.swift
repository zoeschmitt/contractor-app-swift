//
//  TitleWithSub.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/7/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct TitleWithSub: View {
    let title: String
    let subTitle: String
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 3) {
                Text(title)
                    .font(.system(size: 30, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
                Text(subTitle)
                    .font(.system(size: 15, weight: .regular, design: .serif))
                    .foregroundColor(Color.black.opacity(0.5))
            }
            Spacer()
        }
    }
}

