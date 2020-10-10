//
//  RoomView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 6/2/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct RoomView: View {
    let room: String
    @State var selected: String = "info"
    @State var infoWidth: CGFloat = .zero
    @State var workWidth: CGFloat = .zero
    @State var barLocation: CGFloat = 0
    @State var barWidth: CGFloat = 35.0
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
                        .padding(.bottom, 20)
                    .padding(.horizontal, 25)
                    
                        HStack(alignment: .center) {
                            Title(title: room)
                                .padding(.bottom, 20)

                            Spacer()
                        }
                    .padding(.horizontal, 25)
                    .padding(.bottom, 10)
                        
                    
                    VStack {
                             HStack(alignment: .center) {
                                 
                                 Text("Information")
                                     .font(.system(size: 22, weight: .semibold, design: .rounded))
                                     .foregroundColor(.black)
                                     .padding(.trailing, 15)
                                     .overlay(GeometryReader { geo in
                                         Color.white.opacity(0.0001)
                                         .onAppear() {
                                             self.infoWidth = geo.size.width
                                         }
                                         .onTapGesture {
                                             self.selected = "info"
                                             self.barLocation = 0
                                             self.barWidth = self.infoWidth / 2
                                         }
                                     })
                                 
                                 Text("Work Orders")
                                     .font(.system(size: 22, weight: .semibold, design: .rounded))
                                     .foregroundColor(.black)
                                     .padding(.trailing, 15)
                                     .overlay(GeometryReader { geo in
                                         Color.white.opacity(0.0001)
                                         .onAppear() {
                                             self.workWidth = geo.size.width
                                         }
                                         .onTapGesture {
                                             self.selected = "work"
                                             self.barLocation = self.infoWidth + 8
                                             self.barWidth = self.workWidth / 2
                                         }
                                     })
                    
                                 Spacer()
                             }
                             
                             HStack {
                                 Rectangle()
                                     .frame(width: barWidth, height: 4)
                                     .background(Color.black)
                                     .cornerRadius(1)
                                     .padding(.leading, barLocation)
                                     .animation(.interactiveSpring())
                                 
                                 Spacer()
                             }
                         }
                        .padding(.horizontal, 25)
                    .padding(.bottom, 25)
                    
                    if selected == "work" {
                        VStack {
                            PrivateWOContainer(workOrder: works[0].title, date: "June 1st, 2020")
                            PrivateWOContainer(workOrder: works[1].title, date: "March 28th, 2020")
                        }
                        .padding(.horizontal, 25)
    
                    } else {
                    VStack {
                        CustomField(title: "Story", text: "2")
                        CustomField(title: "Location", text: "Left Side")
                        CustomField(title: "Length", text: "6ft")
                        CustomField(title: "Width", text: "8ft")
                        CustomField(title: "Height", text: "9ft")
                        CustomField(title: "Paint Colors", text: "Gray")
                    }
                        .padding(.horizontal, 25)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Photos")
                                .font(.system(size: 14, weight: .semibold, design: .rounded))
                                .padding(.bottom, 10)
                            
                            VStack {
                                Image("LR").renderingMode(.original)
                                    .resizable()
                            }
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 9, style: .continuous))
                            .aspectRatio(contentMode: .fill)
                        }
                        
                        Spacer()
                    }
                        .padding(.horizontal, 25)
                }

                        Spacer()
                    }
                    .padding(.top, 55)
                    .padding(.bottom, 100)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .padding(.vertical, 55)
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}
