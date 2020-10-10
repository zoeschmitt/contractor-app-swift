//
//  NotificationsView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/4/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct NotificationsView: View {
    @Environment(\.presentationMode) var presentationMode
    let notifications = [Notification(icon: "wrench.fill", title: "New Work Request", desc: "Go to your work orders to review and submit your decision.", time: "20 Minutes Ago"), Notification(icon: "wrench.fill", title: "Work Order Accepted", desc: "Go to your work orders to review and submit your decision.", time: "20 Minutes Ago"), Notification(icon: "wrench.fill", title: "New Work Request", desc: "Go to your work orders to review and submit your decision.", time: "20 Minutes Ago"), ]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()

                    }) {
                        BackButton()
                    }
                    
                    Spacer()
                }
                .padding(.bottom, 20)
                
                TitleWithSub(title: "Notifications", subTitle: "You have \(notifications.count) notifications")
                    .padding(.bottom, 20)
                
                VStack {
                    ForEach(notifications.indices, id: \.self) { index in
                        NotificationContainer(notification: self.notifications[index], home: false)
                    }
                }
                
                Spacer()
            }
            .padding(.vertical, 55)
        }
        .edgesIgnoringSafeArea(.all)
        .padding(.horizontal, 25)
        .padding(.vertical, 55)
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}
