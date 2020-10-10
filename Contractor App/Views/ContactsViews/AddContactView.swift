//
//  AddContactView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 6/1/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct AddContactView: View {
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
                        .padding(.horizontal, 25)
                        .padding(.bottom, 25)
                        
                        ZStack {
                            Color("BasicLayerColor")
                            
                            Image(systemName: "plus")
                            .font(.system(size: 30, weight: .regular, design: .rounded))
                            .foregroundColor(Color.black.opacity(0.8))
                            .padding(.all, 30)
                        }
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                        .padding(.bottom, 20)
                    
                        VStack {
                            CustomField(title: "Name", text: " ")
                            CustomField(title: "Email", text: " ")
                            CustomField(title: "Phone", text: " ")
                        }
                        .padding(.horizontal, 25)
                    .padding(.bottom, 150)
                    
                    Text("Done")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 25)
                    .background(Color.black)
                    .cornerRadius(9)
                    
                    }
                            
                    Spacer()
                }
                .padding(.vertical, 55)
                .padding(.bottom, 50)
        }
        .edgesIgnoringSafeArea(.all)
        .padding(.horizontal, 25)
        .padding(.vertical, 55)
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

