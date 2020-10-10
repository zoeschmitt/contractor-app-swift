//
//  MessagesView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/7/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    VStack { 
                        HStack(alignment: .top) {
                            TitleWithSub(title: "Messages", subTitle: "3 Unread Messages")
                                
                             Spacer()
                             
                             NavigationLink(
                             destination: AddContactView()) {
                                 AddButton()
                             }
                         }
                         .padding(.bottom, 20)
                         .padding(.top, 55)
                         .padding(.horizontal, 25)
                        
                        SearchBar()
                            .padding(.bottom, 10)
                            .padding(.horizontal, 25)
                        
                        NavigationLink(
                        destination: MessageView(name: "Jared Smith")){
                        MessageContainer(image: "mike", text: "Jared Smith", time: "1:20 pm", message: "Hey Mike, I was wondering if we could possibly move my work order to next wednesday if that works for you…", new: true)
                            }
                        .buttonStyle(PlainButtonStyle())
                        
                        NavigationLink(
                        destination: MessageView(name: "Alex Smith")){
                        MessageContainer(image: "mike2", text: "Alex Smith", time: "1:20 pm", message: "Hey Mike, I was wondering if we could possibly move my work order to next wednesday if that works for you…", new: false)
                        }
                        .buttonStyle(PlainButtonStyle())
                        
                        Spacer()
                    }// v
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .frame(width: screen.width)
                    .edgesIgnoringSafeArea(.all)
                    .padding(.top, 55)
                    .padding(.bottom, 100)
                }// z
            }// scroll
        }// nav
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}

struct MessageContainer: View {
    let image: String
    let text: String
    let time: String
    let message: String
    let new: Bool
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Image(image)
                        .resizable()
                }
                .clipShape(Circle())
                .frame(width: 70, height: 70)
                .padding(.all, 15)

                VStack {
                    HStack {
                        Text(text)
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Text(time)
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                            .foregroundColor(Color.black.opacity(0.5))
                            .lineLimit(1)
                    }
                    
                    HStack {
                        Text(message)
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                            .foregroundColor(Color.black.opacity(0.3))
                            .padding(.top, 3)
                            .fixedSize(horizontal: false, vertical: true)
                        
                        Spacer()
                    }
                }
                
            }
            Divider()
        }
        .padding(.horizontal, 25)
    }
}
