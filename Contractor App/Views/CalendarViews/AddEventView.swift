//
//  AddEventView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/28/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct AddEventView: View {
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
                        Title(title: "New Event")
                            
                        
                        Spacer()
                    }
                    .padding(.horizontal, 25)
                    .padding(.bottom, 20)

                    Group {
                        HStack {
                        Text("Details")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                            
                        
                        Spacer()
                    }
                        .padding(.top, 30)
                        .padding(.bottom, 25)
           
                        CustomField(title: "Event Name", text: " ")
                        CustomField(title: "Location", text: " ")
                        CustomField(title: "Time", text: " ")
                        CustomField(title: "Description", text: " ")
                        CustomField(title: "Reminder", text: " ")
                        CustomField(title: "Reoccuring", text: " ")
                    }
                    .padding(.horizontal, 25)
                    
                HStack {
                    Text("Contractors")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                        
                    
                    Spacer()
                    
                    SmallAddButton()
                }
                .padding(.top, 30)
                .padding(.horizontal, 25)
                    
                    //profile
                    
                HStack {
                    Text("Clients")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                        
                    
                    Spacer()
                    
                    SmallAddButton()
                }
                .padding(.top, 30)
                .padding(.horizontal, 25)
                        
                    
                    //profile
                    
                HStack {
                     Text("Associated Work Order")
                         .font(.system(size: 18, weight: .semibold, design: .rounded))
                         .foregroundColor(.black)
                         
                     
                     Spacer()
                    
                    SmallAddButton()
                 }
                .padding(.vertical, 30)
                .padding(.horizontal, 25)
                
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
