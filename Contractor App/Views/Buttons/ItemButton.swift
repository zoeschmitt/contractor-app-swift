//
//  ItemButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/8/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct ItemButton: View {
    let item: Item
    var body: some View {
        HStack {
            Text(item.name)
                .foregroundColor(.black)
                .font(.system(size: 16, weight: .semibold, design: .rounded))
                .padding(.leading, 15)
                .padding(.vertical, 15)
            
            Spacer()
        }
        .frame(width: screen.width - 50)
        .background(Color.white)
        .cornerRadius(9)
        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 0, y: 0)
        .padding(.bottom, 10)
    }
}
