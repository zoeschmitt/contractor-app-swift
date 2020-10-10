//
//  NotificationContainer.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/5/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct NotificationContainer: View {
    let notification: Notification
    let home: Bool
    var body: some View {
        HStack {
            VStack {
                Image(systemName: self.notification.icon)
                    .foregroundColor(.black)
                    .frame(width: 16, height: 16)
                    .padding(.all, 15)
            }
            .background(home ? Color("BasicLayerColor") : Color.white)
            .cornerRadius(9)
            .padding(.horizontal, 15)
            
            VStack(alignment: .leading) {
                Text(self.notification.title)
                    .font(.system(size: 18, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
                
                Text(self.notification.desc)
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.3))
                    .lineLimit(3)
                
                Text(self.notification.time)
                    .font(.system(size: 10, weight: .regular, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.3))
                    .padding(.top, 3)
            }
            .padding(.vertical, 15)
            .padding(.trailing, 15)
        }
        .frame(width: screen.width - 50)
        .background(home ? Color.white : Color("BasicLayerColor"))
        .cornerRadius(14)
        .shadow(color: home ? Color.black.opacity(0.08) : .clear, radius: 15, x: 0, y: 0)
        .padding(.vertical, home ? 30 : 0)
        .padding(.trailing, home ? 5 : 0)
    }
}
