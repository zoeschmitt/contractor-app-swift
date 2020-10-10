//
//  customField.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/11/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct CustomField: View {
    let title: String
    let text: String
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                    .padding(.bottom, 10)
                
                Spacer()
            }
            HStack {
                Text(text)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                    .font(.body)
                    .fixedSize(horizontal: false, vertical: true)
                    .truncationMode(.middle)
                    .frame(width: screen.width - 90, alignment: .leading)
                    .padding(.vertical, 15)
            }
            .frame(width: screen.width - 50)
            .background(Color("BasicLayerColor"))
            .cornerRadius(10)
        }
        .padding(.bottom, 20)
    }
}

