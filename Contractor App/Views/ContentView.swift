//
//  ContentView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 4/21/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI
import Combine

let screen = UIScreen.main.bounds

struct ContentView: View {
    //@ObservedObject var mainPage: UserSub = UserSub()
    @State var selectedScreen = 0
    let gradient = Gradient(colors: [Color("BasicLayerColor"), Color.white])
    var body: some View {
        ZStack {
            VStack {
                LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
                .frame(width: screen.width, height: screen.height / 2)
                
                Spacer()
            }
            
            if selectedScreen == 1 {
                CalendarView()
            }
            else if selectedScreen == 2 {
                CommerceView()
            }
            else if selectedScreen == 3 {
                ContactsView()
            }
            else if selectedScreen == 4 {
                MessagesView()
            } else {
                HomeView()
            }

            VStack {
                Spacer()
                
                HStack(spacing: 55) {
                    Button(action: {
                        self.selectedScreen = 0
                    }) {
                        Image(systemName: "house.fill")
                            .font(.system(size: 22, weight: .semibold))
                            .foregroundColor(self.selectedScreen == 0 ? .black : Color("BasicLayerColor"))
                    }
                    Button(action: {
                        self.selectedScreen = 1
                    }) {
                        Image(systemName: "calendar")
                            .font(.system(size: 22, weight: .semibold))
                            .foregroundColor(self.selectedScreen == 1 ? .black : Color("BasicLayerColor"))
                    }
                    Button(action: {
                        self.selectedScreen = 2
                    }) {
                        Image(systemName: "tag.fill")
                        .font(.system(size: 22, weight: .semibold))
                        .foregroundColor(self.selectedScreen == 2 ? .black : Color("BasicLayerColor"))
                    }
                    Button(action: {
                        self.selectedScreen = 3
                    }) {
                        Image(systemName: "person.fill")
                        .font(.system(size: 22, weight: .semibold))
                        .foregroundColor(self.selectedScreen == 3 ? .black : Color("BasicLayerColor"))
                    }
                    Button(action: {
                        self.selectedScreen = 4
                    }) {
                        Image(systemName: "bubble.left.fill")
                        .font(.system(size: 22, weight: .semibold))
                        .foregroundColor(self.selectedScreen == 4 ? .black : Color("BasicLayerColor"))
                    }
                }
                .padding(.top, 25)
                .padding(.bottom, 50)
                .padding(.horizontal, 25)
                .frame(width: screen.size.width)
                .background(Color.white)
                .cornerRadius(14, corners: [.topLeft, .topRight])
                .shadow(color: Color.black.opacity(0.1), radius: 15, x: 0, y: 8)
            }
            .frame(width: screen.size.width, height: screen.size.height)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
