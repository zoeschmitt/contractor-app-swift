//
//  AddWorkOrderView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/29/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct AddWorkOrderView: View {
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
                        Title(title: "New Work Order")
                            
                        
                        Spacer()
                    }
                    .padding(.horizontal, 25)
                    .padding(.bottom, 20)

                    Group {
                        CustomField(title: "Work Order Name", text: " ")
                        CustomField(title: "Client", text: " ")
                        CustomField(title: "Description", text: " ")
                        CustomField(title: "Date", text: " ")
                        CustomField(title: "Notes", text: " ")
                    }
                    .padding(.horizontal, 25)
                    
                HStack {
                    Text("Rooms")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                        
                    
                    Spacer()
                    
                    SmallAddButton()
                }
                .padding(.top, 30)
                .padding(.horizontal, 25)
                    
                    
                HStack {
                    Text("Items")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                        
                    
                    Spacer()
                    
                    SmallAddButton()
                }
                .padding(.top, 30)
                .padding(.horizontal, 25)
                    
                HStack {
                     Text("Photos")
                         .font(.system(size: 18, weight: .semibold, design: .rounded))
                         .foregroundColor(.black)
                         
                     
                     Spacer()
                    
                    SmallAddButton()
                 }
                .padding(.vertical, 30)
                .padding(.horizontal, 25)
                
                
                ShadowButton(icon: "wrench.fill", title: "Create Estimate")
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

