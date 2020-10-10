//
//  ItemView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/8/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct ItemView: View {
    let item: Item
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
                            Title(title: item.name)
                                .padding(.bottom, 20)

                            Spacer()
                        }
                    .padding(.horizontal, 25)
                    .padding(.bottom, 10)
    
                    VStack {
                        CustomField(title: "Brand", text: item.brand)
                        CustomField(title: "Date of Purchase", text: item.DOP)
                        CustomField(title: "Cost", text: "$\(item.cost)")
                        CustomField(title: "Serial Number", text: item.serial)
                        CustomField(title: "Size", text: item.size)
                        CustomField(title: "Description", text: item.description)
                        CustomField(title: "Warranty Period", text: item.warranty)
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

