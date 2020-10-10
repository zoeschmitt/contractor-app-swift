//
//  SearchBar.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/7/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(Color.black.opacity(0.1))
                .padding(.trailing, 5)
            
            Text("Search")
                .font(.system(size: 18, weight: .semibold, design: .rounded))
                .foregroundColor(Color.black.opacity(0.1))
            
            Spacer()
        }
        .padding(.vertical, 13)
        .padding(.leading, 20)
        .background(Color("BasicLayerColor"))
        .cornerRadius(9)
    }
}

