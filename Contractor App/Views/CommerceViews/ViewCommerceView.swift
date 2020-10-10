//
//  ViewCommerceView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/29/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct ViewCommerceView: View {
    var invoice: Bool
    let name: String
    let amount: String
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
                            
                            Text(invoice ? "Invoice" : "Estimate")
                                .font(.system(size: 30, weight: .semibold, design: .rounded))
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        
                        Spacer()
                    }
                    .frame(width: screen.width)
                }
                .frame(width: screen.width)

                    
                VStack {
                    HStack {
                            Text("Information")
                                .font(.system(size: 18, weight: .semibold, design: .rounded))
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        .padding(.horizontal, 25)
                    .padding(.bottom, 20)
                    
                    VStack {
                        JackField(title: "Name", text: name)
                        JackField(title: "Amount", text: amount)
                        JackField(title: "Notes (optional)", text: "Lorem Ipsum")
                    }
                    .padding(.top, 10)
                    .padding(.horizontal, 25)
                    .padding(.bottom, 20)

                }
                
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Work Order")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                    .padding(.top, 30)
                    .padding(.bottom, 10)
                    
                    ShadowButton(icon: "wrench.fill", title: name)
                        .padding(.bottom, 20)
                }
                .padding(.horizontal, 25)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Attachments")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                    .padding(.top, 30)
                    .padding(.bottom, 10)
                    
                    
                    Image("doc")
                }
                .padding(.horizontal, 25)
                
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

