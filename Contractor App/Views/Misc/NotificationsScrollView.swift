//
//  NotificationsScrollView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/4/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct NotificationsScrollView: View {
    
    var notifications: [Notification]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(notifications.indices, id: \.self) { index in
                    NotificationContainer(notification: self.notifications[index], home: true)
                }
                
                Spacer()
            }
            .padding(.horizontal, 25)
            
        }
        .offset(x: 0, y: -25)
    }
}

