//
//  SettingsButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/17/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct SettingsButton: View {
    let setting: Setting
    var body: some View {
        HStack {
            Image(systemName: setting.icon)
                .font(.system(size: 18, weight: .semibold, design: .rounded))
                .padding(.all, 5)
                .foregroundColor(.black)
                .frame(width: 47, height: 47)
                .background(Color("BasicLayerColor"))
                .cornerRadius(10)
            
            Text(setting.title)
                .font(.system(size: 18, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
                .padding(.trailing, 5)
                .padding(.leading, 10)
            
            Spacer()
        }
    }
}


