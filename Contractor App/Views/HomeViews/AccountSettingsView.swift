//
//  AccountSettingsView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/5/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct AccountSettingsView: View {
    let techSettings: [Setting] = [Setting(title: "Job Locations", icon: "mappin.circle.fill"), Setting(title: "My Media", icon: "play.fill"), Setting(title: "Feature Requests", icon: "hand.thumbsup.fill"), Setting(title: "Share", icon: "square.and.arrow.up.fill"), Setting(title: "App Feedback", icon: "text.bubble.fill"), Setting(title: "Privacy", icon: "hand.raised.fill")]
    let adminSettings: [Setting] = [Setting(title: "Company Settings", icon: "gear"), Setting(title: "Job Locations", icon: "mappin.circle.fill"), Setting(title: "My Media", icon: "play.fill"), Setting(title: "Feature Requests", icon: "hand.thumbsup.fill"), Setting(title: "Custom Search Filters", icon: "slider.horizontal.3"), Setting(title: "Share", icon: "square.and.arrow.up.fill"), Setting(title: "App Feedback", icon: "text.bubble.fill"), Setting(title: "Privacy", icon: "hand.raised.fill")]
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                VStack {
                        HStack {
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }) {
                                BackButton()
                            }
                            Spacer()
                        }
                        Spacer()
                    }
                    .padding(.top, 55)
                    .padding(.bottom, 20)
                
                Title(title: "Account Settings")
                    .padding(.bottom, 20)
                
                VStack {
                    if user.type == "admin" {
                        ProfileContainer(image: "Rectangle", name: "Your Profile")
                        ProfileContainer(image: "Business", name: "Company Profile")
                    } else {
                        ProfileContainer(image: "Rectangle", name: "Your Profile")
                    }
                }
                
                VStack {
                    if user.type == "admin" {
                        ForEach(0..<adminSettings.count) { index in
                            SettingsButton(setting: self.adminSettings[index])
                        }
                    } else {
                        ForEach(0..<techSettings.count) { index in
                            SettingsButton(setting: self.techSettings[index])
                        }
                    }
                }
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(.horizontal, 25)
        .padding(.vertical, 55)
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

