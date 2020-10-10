//
//  WorkOrderView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/7/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct WorkOrderView: View {
    let workOrder: WorkOrder
    let publicArr: [String] = ["reg","prog","mod"]
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                Group {
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
                        TitleWithSub(title: workOrder.title, subTitle: "Submitted \(workOrder.date)")
                            .padding(.bottom, 20)
                        
                        Button(action: {
                            print("hi")
                            //state editmode = true
                        }) {
                            EditButton()
                        }
                    }
                    .padding(.horizontal, 25)
                }
    
                if workOrder.status == "past" {
                    
                } else {
                    VStack {
                        IconLabel(icon: "person.fill", title: workOrder.name, messageIcon: true)
                        IconLabel(icon: "clock.fill", title: workOrder.date, messageIcon: false)
                        IconLabel(icon: "mappin.circle.fill", title: publicArr.contains(workOrder.status) ? workOrder.location : workOrder.zipcode, messageIcon: false)
                    }
                }

                HStack {
                    Text("Room")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                        .padding(.top, 30)
                    
                    Spacer()
                }
                .padding(.horizontal, 25)
                
                if workOrder.status == "past" {
                    
                } else {
                    NavigationLink(
                    destination: RoomView(room: "Living Room")) {
                    ShadowButton(icon: "house.fill", title: "Living Room")
                        .padding(.top, 10)
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                
                HStack {
                    Text("Items")
                        .font(.system(size: 18, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                    
                    Spacer()
                }
                .padding(.horizontal, 25)
                .padding(.top, 25)
                .padding(.bottom, 20)
                
                if !workOrder.items.isEmpty {
                    ForEach(workOrder.items.indices, id: \.self) { index in
                        NavigationLink(
                        destination: ItemView(item: self.workOrder.items[index])) {
                                ItemButton(item: self.workOrder.items[index])
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                
                if workOrder.status == "past" {
                    HStack {
                        Text("Added Items")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                    .padding(.horizontal, 25)
                    .padding(.top, 25)
                    .padding(.bottom, 20)
                    
                    NavigationLink(
                    destination: ItemView(item: self.workOrder.items[0])) {
                            ItemButton(item: self.workOrder.items[0])
                    }
                    .buttonStyle(PlainButtonStyle())
                }
                
                Group {
                    HStack {
                        Text("Details")
                            .font(.system(size: 18, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                        
                        Spacer()
                    }
                    .padding(.top, 25)
                    .padding(.bottom, 20)
                    
                    CustomField(title: "Description", text: "Some shingles have come off on the roof from the recent storm.")
                    CustomField(title: "Notes", text: "Please wear masks and gloves when in the house.")
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Photos")
                                .font(.system(size: 14, weight: .semibold, design: .rounded))
                                .padding(.bottom, 10)
                            
                            VStack {
                                Image("holeimage").renderingMode(.original)
                                    .resizable()
                            }
                            .buttonStyle(PlainButtonStyle())
                            .frame(width: 100, height: 100)
                            .clipShape(RoundedRectangle(cornerRadius: 9, style: .continuous))
                            .aspectRatio(contentMode: .fill)
                        }
                        
                        Spacer()
                    }
                }
                .padding(.horizontal, 25)
                
                if workOrder.status == "new" || workOrder.status == "recom" {
                    Button(action: {
                        print("hi")
                    }) {
                        MainButton(title: "Accept", color: Color(#colorLiteral(red: 0.3963762522, green: 0.7973216772, blue: 0.3314600587, alpha: 1)))
                    }
                    .padding(.top, 30)
                    
                    Button(action: {
                        print("hi")
                    }) {
                        MainButton(title: "Decline", color: Color(#colorLiteral(red: 0.8475956321, green: 0.3519175947, blue: 0.3612626195, alpha: 1)))
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 30)
                }
                else if workOrder.status == "dec" {
                    
                }
                else if workOrder.status == "prog" {
                    Button(action: {
                        print("hi")
                    }) {
                        MainButton(title: "End Work Order", color: Color(#colorLiteral(red: 0.4745098039, green: 0.7333333333, blue: 1, alpha: 1)))
                    }
                    .padding(.vertical, 30)
                } else {
                    Button(action: {
                        print("hi")
                    }) {
                        MainButton(title: "Start Work Order", color: Color(#colorLiteral(red: 0.3963762522, green: 0.7973216772, blue: 0.3314600587, alpha: 1)))
                    }
                    .padding(.vertical, 30)
                }

                
                Spacer()
            }
            .padding(.vertical, 55)
        }
        .edgesIgnoringSafeArea(.all)
        .padding(.vertical, 55)
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}


