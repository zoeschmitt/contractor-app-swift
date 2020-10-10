//
//  ContactView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/11/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct ContactView: View {
    @State var contact: User
    @State var showModal = false
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
                            
                            if contact.type == "co" {
                                Button(action: {
                                    print("hi")
                                }) {
                                    GenericButton(icon: "phone.fill")
                                }
                                .padding(.trailing, 5)
                            }
                            
                            Button(action: {
                                print("hi")
                            }) {
                                GenericButton(icon: "bubble.left.fill")
                            }
                        }
                        .padding(.horizontal, 25)
                        .padding(.bottom, 20)
                    
                    HStack(alignment: .center) {
                        TitleWithSub(title: contact.name, subTitle: contact.job)
                            .padding(.bottom, 20)
                        
                        if contact.type == "jack" {
                            
                            Spacer()
                            
                            Image(systemName: "star.fill")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(Color(#colorLiteral(red: 1, green: 0.8742827773, blue: 0.2495279312, alpha: 1)))
                                .padding(.trailing, 5)
                            
                            Text(contact.rating)
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.horizontal, 25)
                        
                        VStack {
                            Image(contact.type == "jack" ? "Linda" : "Rectangle").renderingMode(.original)
                                .resizable()
                        }
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: 90, height: 90)
                        .clipShape(Circle())
                        .aspectRatio(contentMode: .fill)
                        .padding(.bottom, 20)
                    
                    if contact.type == "jack" {
                        HStack {
                            Text("Notes")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            Button(action: {
                                self.showModal.toggle()
                            }) {
                                SmallAddButton()
                            }
                            .sheet(isPresented: $showModal) {
                                AddNoteView(showModal: self.$showModal)
                            }
                        }
                        .padding(.horizontal, 25)
                        .padding(.bottom, 10)
                        
                        ForEach(0..<contact.notes.count) { index in
                            JackField(title: "11/15/20", text: self.contact.notes[index])
                        }
                        .padding(.horizontal, 25)
                        
                        HStack {
                            Text("History")
                                .font(.system(size: 20, weight: .semibold, design: .rounded))
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        .padding(.horizontal, 25)
                        .padding(.top, 25)
                        
                        VStack {
                            ForEach(contact.history.indices, id: \.self) { index in
                                PrivateWOContainer(workOrder: self.contact.history[index].title, date: self.contact.history[index].date)
                            }
                        }
                        .padding(.horizontal, 25)
                        
                    } else {
                        VStack {
                            JackField(title: "Name", text: contact.name)
                            JackField(title: "Email", text: contact.email)
                            JackField(title: "Phone", text: contact.phone)
                        }
                        .padding(.horizontal, 25)

                        HStack {
                            Text("Add Note")
                                .font(.system(size: 18, weight: .semibold, design: .rounded))
                                .foregroundColor(.black)
                                .padding(.trailing, 10)
                            
                            Button(action: {
                                self.showModal.toggle()
                            }) {
                                SmallAddButton()
                            }
                            .sheet(isPresented: $showModal) {
                                AddNoteView(showModal: self.$showModal)
                            }
                            
                            Spacer()
                        }
                        .padding(.horizontal, 25)
                        .padding(.top, 10)
                    }
                            
                                Spacer()
                }
                .padding(.vertical, 55)
                .padding(.bottom, 50)
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

