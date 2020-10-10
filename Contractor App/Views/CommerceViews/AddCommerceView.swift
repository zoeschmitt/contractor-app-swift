//
//  AddCommerceView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/29/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct AddCommerceView: View {
    var invoice: Bool
    @Binding var addPage: Bool
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ZStack {
                    HStack {
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()

                            }) {
                                BackButton()
                            }
                        
                        Spacer()

                        }
                        .padding(.horizontal, 25)
                        .padding(.bottom, 30)
                    
                    HStack() {
                        Spacer()
                        
                        VStack {
                            
                            Text(invoice ? "New Invoice" : "New Estimate")
                                .font(.system(size: 30, weight: .semibold, design: .rounded))
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    .frame(width: screen.width)
                }
                .frame(width: screen.width)

                    Group {
                        CustomField(title: "Name", text: " ")
                        CustomField(title: "Amount", text: " ")
                        CustomField(title: "Notes (optional)", text: " ")
                    }
                    .padding(.horizontal, 25)
                
                VStack(alignment: .leading) {
                    Text("Estimate")
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                        .padding(.bottom, 10)
                    
                    HStack {
                        HStack {
                            Image(systemName: "square.and.arrow.up.fill")
                                .foregroundColor(.black)
                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                                .padding(.vertical, 20)
                        }
                        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity)
                        .background(Color("BasicLayerColor"))
                        .cornerRadius(10)
                        .padding(.trailing, 10)
                        
                        HStack {
                            Image(systemName: "camera.fill")
                                .foregroundColor(.black)
                                .font(.system(size: 16, weight: .semibold, design: .rounded))
                                .padding(.vertical, 20)
                        }
                        .frame(minWidth: 0, idealWidth: .infinity, maxWidth: .infinity)
                        .background(Color("BasicLayerColor"))
                        .cornerRadius(10)
                        .padding(.trailing, 10)
                    }
                    .frame(width: screen.width - 50)
                }
                .padding(.bottom, 20)
                    
                
                VStack(alignment: .leading) {
                    Text("Associated Work Order")
                        .font(.system(size: 14, weight: .semibold, design: .rounded))
                        .padding(.bottom, 10)
                    
                    ShadowButton(icon: "wrench.fill", title: "Select Work Order")
                        .padding(.bottom, 50)
                }
                
                Text("Finish & Send")
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
