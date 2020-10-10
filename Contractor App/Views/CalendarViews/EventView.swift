//
//  EventView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/28/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct EventView: View {
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
                    .padding(.horizontal, 25)
                    .padding(.bottom, 20)
                    
                    HStack(alignment: .center) {
                        TitleWithSub(title: "Check on Lindas A/C Unit", subTitle: "Created May 15th, 2020")
                            .padding(.bottom, 20)
                        
                        Button(action: {
                            print("hi")
                            //state editmode = true
                        }) {
                            EditButton()
                        }
                    }
                    .padding(.horizontal, 25)

                    Group {
                        HStack {
                        Text("Details")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                            
                        
                        Spacer()
                    }
                        .padding(.top, 30)
                        .padding(.bottom, 25)
           
                        JackField(title: "Event Name", text: "Check on Lindas A/C unit")
                        JackField(title: "Location", text: "1525 River rd, San Antonio TX 78260")
                        JackField(title: "Time", text: "8:00am")
                        JackField(title: "Description", text: "Check on Lindas new A/C unit to make sure she is satisfied with it")
                        JackField(title: "Reminder", text: "1 Week Before")
                        JackField(title: "Reoccuring", text: "Never")
                    }
                    .padding(.horizontal, 25)
                    
                Group {
                    HStack {
                        Text("Contractors")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                            
                        
                        Spacer()

                    }
                    .padding(.top, 25)
                    .padding(.horizontal, 25)
                    
                    UserContainer(image: "Rectangle", name: "Mark Jackson", type: "Machine Repair")
                        .padding(.top, 10)
                        
                    HStack {
                        Text("Clients")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                            
                        
                        Spacer()
                    
                    }
                    .padding(.top, 30)
                    .padding(.horizontal, 25)
                            
                        
                    UserContainer(image: "Linda", name: "Linda Miller", type: "Jack User")
                        .padding(.top, 10)
                }
                    
                HStack {
                     Text("Associated Work Order")
                         .font(.system(size: 18, weight: .semibold, design: .rounded))
                         .foregroundColor(.black)
                         
                     
                     Spacer()
                    
                 }
                .padding(.top, 30)
                .padding(.horizontal, 25)
                
                ShadowButton(icon: "wrench.fill", title: "Repair A/C Unit")
                    .padding(.top, 10)
                    .padding(.bottom, 30)
                
                Text("Done")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 25)
                    .background(Color.black)
                    .cornerRadius(9)
                
                Spacer()
                
            } // vstack
            .padding(.vertical, 55)
            .padding(.bottom, 80)
        } // scroll
        .edgesIgnoringSafeArea(.all)
        .padding(.vertical, 55)
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}

