//
//  JackField.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/11/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct JackField: View {
    let title: String
    let text: String
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(.system(size: 12, weight: .regular, design: .rounded))
                
                Text(text)
                    .font(.system(size: 18, weight: .semibold, design: .rounded))
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 12)
            
            Spacer()
        }
        .background(Color("BasicLayerColor"))
        .cornerRadius(9)
        .frame(width: screen.width - 50)
        .padding(.bottom, 5)
    }
}

