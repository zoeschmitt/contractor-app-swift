//
//  MessageView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 6/3/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct MessageView: View {
    let name: String
    @Environment(\.presentationMode) var presentationMode
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
                
                HStack {
                    Title(title: name)
                    
                    Spacer()
                    
                    NavigationLink(
                    destination: ContactView(contact: contacts[0])) {
                        VStack {
                            Image("Rectangle").renderingMode(.original)
                                .resizable()
                        }
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: 57, height: 57)
                        .clipShape(Circle())
                        .aspectRatio(contentMode: .fill)
                    }
                }
                
                
                Spacer()
                
                VStack {
                    Text("03/15/20 11:30AM")
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.5))
                    .lineLimit(1)
                    .padding(.bottom, 20)
                    
                    Mess(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt", recieved: false, topCorner: true)
                        .padding(.bottom, 1)
                    
                    Mess(text: "Lorem ipsum", recieved: false, topCorner: false)
                        .padding(.bottom, 20)
                    
                    Text("FRI 11:30AM")
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.5))
                    .lineLimit(1)
                    .padding(.bottom, 20)
                    
                    Mess(text: "Lorem ipsum dolor sit amet", recieved: true, topCorner: true)
                        .padding(.bottom, 10)
                    
                    Mess(text: "Lorem ipsum dolor sit amet", recieved: false, topCorner: true)
                        .padding(.bottom, 1)
                    
                    Mess(text: "I can be there tuesday", recieved: false, topCorner: false)
                        .padding(.bottom, 10)
                    
                    Mess(text: "Okay sounds good", recieved: true, topCorner: true)
                        .padding(.bottom, 20)
                    
                    HStack {
                        Text("Message")
                            .font(.system(size: 16, weight: .regular, design: .rounded))
                            .foregroundColor(.white)
                            .padding(.all, 15)
                        
                        Spacer()
                        
                        Image(systemName: "paperplane.fill")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.white)
                        .padding(.all, 15)
                        .background(Color.black)
                        .cornerRadius(4)
                        .padding(.all, 5)
                    }
                    .background(Color("BasicLayerColor"))
                    .cornerRadius(9)
                    
                }
   
            }
            .padding(.horizontal, 25)
            .padding(.vertical, 55)
            .padding(.bottom, 50)
            .frame(height: screen.height)
        }
        .edgesIgnoringSafeArea(.all)
        .padding(.vertical, 55)
        //.padding(.bottom, 80)
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView(name: "Mike Smith")
    }
}

struct Mess: View {
    let text: String
    let recieved: Bool
    let topCorner: Bool
    var body: some View {
        HStack {
            if !recieved {
                Spacer()
            }
            HStack {
                Text(text)
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .foregroundColor(recieved ? .black : .white)
                    .padding(.all, 15)

            }
            .background(recieved ? Color("BasicLayerColor") : .black)
            .cornerRadius(9)
//            .cornerRadius(9, corners: .topLeft)
//            .cornerRadius(9, corners: topCorner ? .topRight : .bottomRight)
//            .cornerRadius(9, corners: .bottomLeft)
            
            if recieved {
                Spacer()
            }
        }
    }
}
