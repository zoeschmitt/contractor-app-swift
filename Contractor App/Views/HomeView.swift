//
//  HomeView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/4/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    let times = ["8:00 am", "8:30 am", "9:00 am", "9:30 am", "10:00 am", "10:30 am", "11:00 am", "11:30 am", "12:00 pm", "12:30 pm", "1:00 pm", "1:30 pm", "2:00 pm", "2:30 pm", "3:00 pm"]
    let gradient = Gradient(colors: [Color("BasicLayerColor"), Color.white])
    var notifications = [Notification(icon: "wrench.fill", title: "New Work Request", desc: "Go to your work orders to review and submit your decision.", time: "20 Minutes Ago"), Notification(icon: "wrench.fill", title: "Work Order Accepted", desc: "Go to your work orders to review and submit your decision.", time: "20 Minutes Ago"), Notification(icon: "wrench.fill", title: "New Work Request", desc: "Go to your work orders to review and submit your decision.", time: "20 Minutes Ago"), ]
    var workOrders = [WorkOrder(title: "Repair Wall", time: "8:00am", location: "1525 River rd, San Antonio TX 78260", date: "March 28th, 2020", name: "Linda Miller", items: someItems, description: "Some shingles have come off on the roof from the recent storm.", notes: "Please wear masks and gloves when in the house.", zipcode: "78260", status: "reg"), WorkOrder(title: "Install Solar Panels", time: "9:00 am - 12:00 pm", location: "862 Canyon rd, San Antonio TX 78260", date: "March 28th, 2020", name: "Linda Miller", items: someItems, description: "Some shingles have come off on the roof from the recent storm.", notes: "Please wear masks and gloves when in the house.", zipcode: "78260", status: "reg"), WorkOrder(title: "Roof Repair", time: "1:00 pm - 3:00 pm", location: "9278 West rd, San Antonio TX 78260", date: "March 28th, 2020", name: "Linda Miller", items: someItems, description: "Some shingles have come off on the roof from the recent storm.", notes: "Please wear masks and gloves when in the house.", zipcode: "78260", status: "reg")]
    @State var showList: Bool = false
    @State var currentDate = Date()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    VStack {
                        LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
                        .frame(width: screen.width, height: screen.height / 2)
                        
                        Spacer()
                    }
                    
                    VStack {
                        VStack {
                            Color.clear
                        }
                        .frame(height: 55)
                        
                        HStack {
                            VStack(alignment: .leading, spacing: 2) {
                                Text("Mike Smith")
                                    .font(.system(size: 30, weight: .semibold, design: .rounded))
                                    .foregroundColor(.black)
                                Text("You have 3 work order's today")
                                    .font(.system(size: 15, weight: .regular, design: .rounded))
                                    .foregroundColor(.gray)
                            }
                            
                            Spacer()
                            
                            NavigationLink(
                            destination: AccountSettingsView()) {
                                VStack {
                                    Image("Rectangle").renderingMode(.original)
                                        .resizable()
                                }
                                .buttonStyle(PlainButtonStyle())
                                .frame(width: 57, height: 57)
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fill)
                            }
                            
                        }
                        .padding(.horizontal, 25)
                        
                        VStack {
                            Color.clear
                        }
                        .frame(height: 25)
                        
                        HStack {
                            ClockInButton()
                            Spacer()
                        }
                        .padding(.horizontal, 25)
              
                        HStack {
                            Text("Notifications")
                                .font(.system(size: 22, weight: .semibold, design: .rounded))
                                .foregroundColor(.black)
                            
                            Spacer()
                            
                            NavigationLink(
                            destination: NotificationsView()) {
                                AllButton(icon: "bell.fill")
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                        .padding(.top, 25)
                        .padding(.horizontal, 25)
                        
                        NotificationsScrollView(notifications: notifications)
                        
                        HStack {
                            Text("Today")
                                .font(.system(size: 22, weight: .semibold, design: .rounded))
                                .foregroundColor(.black)
                            
                            Image(systemName: "list.bullet")
                                .font(.system(size: 18, weight: .semibold))
                                .padding(.all, 15)
                                .foregroundColor(showList ? .white : .black)
                                .background(showList ? Color.black : Color("BasicLayerColor"))
                                .cornerRadius(9)
                                .onTapGesture {
                                    self.showList.toggle()
                                }
                            .padding(.leading, 10)
                            
                            Spacer()
                            NavigationLink(
                            destination: WorkOrdersView()) {
                                AllButton(icon: "wrench.fill")
                            }
                        }
                        .padding(.top, 60)
                        .padding(.horizontal, 25)
                        .offset(x: 0, y: -75)
                        
                        if showList {
                            VStack {
                                    ForEach(workOrders.indices, id: \.self) { index in
                                        NavigationLink(
                                        destination: WorkOrderView(workOrder: self.workOrders[index])) {
                                            WorkOrderContainer(workOrder: self.workOrders[index])
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                    }
                            }
                            .frame(width: screen.width - 54.3)
                            .offset(x: 0, y: -50)
                            
                        } else {
                            ZStack {
                                TimeLines(time: times)
                             
                                VStack {
                                    
                                    NavigationLink(
                                    destination: WorkOrderView(workOrder: self.workOrders[0])) {
                                        ScheduleContainer(workOrder: workOrders[0], frame1: 90 - 15/2)
                                            .padding(.bottom, 60 + 15/2)
                                    }
                                    .buttonStyle(PlainButtonStyle())

                                    NavigationLink(
                                    destination: WorkOrderView(workOrder: self.workOrders[1])) {
                                        ScheduleContainer(workOrder: workOrders[1], frame1: 465)
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                    
                                    NavigationLink(
                                    destination: WorkOrderView(workOrder: self.workOrders[2])) {
                                        ScheduleContainer(workOrder: workOrders[2], frame1: 315)
                                            .padding(.top, 120 + 15)

                                    }
                                    .buttonStyle(PlainButtonStyle())
                                    
                                    Spacer()

                                }//vstack
                                .frame(minHeight: 0, maxHeight: .infinity)
                                .padding(.leading, 120)
                                .padding(.trailing, 25)

                            }//zstack
                            .offset(x: 0, y: -55)
                        }//else
                    } // vstack
                    .padding(.top, 55)
                    .padding(.bottom, 100)
                } // zstack
            } // scrollview
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        } // navigation
    } // body
} // struct

struct TimeLines: View {
    var time: [String]
    var body: some View {
        VStack(spacing: 60) {
            ForEach(0..<self.time.count) { index in
                if index % 2 == 0 {
                    HStack {
                        Text(self.time[index])
                            .font(.system(size: 15, weight: .semibold, design: .rounded))
                            .foregroundColor(Color.black.opacity(0.2))
                        
                        Spacer()
                    }
                    .frame(height: 15)
                    .padding(.leading, 25)
                    
                } else {
                    HStack(alignment: .center) {
                        Spacer()
                        
                        Color.black.opacity(0.2)
                            .frame(width: screen.width - 25, height: 1)
                        
                    }
                    .frame(height: 15)
                }
                
            }
        }
    }
}
