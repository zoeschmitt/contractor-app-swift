//
//  CalendarView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/7/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct CalendarView: View {
    let times = ["8:00 am", "8:30 am", "9:00 am", "9:30 am", "10:00 am", "10:30 am", "11:00 am", "11:30 am", "12:00 pm", "12:30 pm", "1:00 pm", "1:30 pm", "2:00 pm", "2:30 pm", "3:00 pm"]
    let daysOfWeek: [String] = ["S", "M", "T", "W", "T", "F", "S"]
    let weeeek: [String] = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    @State var weeks: [[Day]] = [week1, wee21, wee31, wee41, wee51, wee61]
    @State var workords: [WorkOrder] = workOrds
    @State var selectedDay: String = "21"
    @State var showList: Bool = false
    @State var weekDay: String = "Friday"
    @State var event: Bool = true
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                        VStack {
                             HStack(alignment: .top) {
                                Title(title: "Calendar")
                                    .multilineTextAlignment(.leading)
                                   
                                Spacer()
                                
                                NavigationLink(
                                destination: AddEventView()) {
                                    AddButton()
                                }
                            }
                            .padding(.bottom, 20)
                            .padding(.top, 55)
                            .frame(width: screen.width - 50)
                            
                            
                            HStack {
                                SmallArrowButton(back: true)
                                
                                Spacer()
                                
                                Text("May 2020")
                                    .font(.system(size: 26, weight: .semibold, design: .rounded))
                                    .foregroundColor(.black)
                                
                                Spacer()
                                
                                SmallArrowButton(back: false)
                            }
                            .padding(.bottom, 10)
                            .frame(width: screen.width - 50)
                            
                                HStack(alignment: .center) {
                                    ForEach(0..<daysOfWeek.count) { index in
                                        if index == 0 {
                                            Spacer()
                                        }
                                        HStack {
                                            Text(self.daysOfWeek[index])
                                                .font(.system(size: 16, weight: .bold, design: .rounded))
                                                .foregroundColor(.black)
                                        }
                                        .frame(width: 47, height: 47)
                                        
                                        if index != self.daysOfWeek.count {
                                            Spacer()
                                        }
                                    }
                                }
                                .padding(.bottom, 3)
                      
                            ForEach(0..<weeks.count) { index in
                                    HStack(alignment: .center) {
                                        Spacer()
                                        ForEach(0..<self.weeks[index].count) { indd in
                                            Button(action: {
                                                self.weekDay = self.weeeek[indd]
                                                self.selectedDay = self.weeks[index][indd].num
                                                self.weeks[index][indd].selected = true
                                                self.workords = self.weeks[index][indd].workScheduled
                                            }) {
                                                CalendarButton(day: self.weeks[index][indd], isSelected: self.$selectedDay)
                                            }
                                            .buttonStyle(PlainButtonStyle())
                                        
                                            if indd != self.weeks[index].count {
                                                Spacer()
                                            }
                                        }
                                    }
                                    .padding(.bottom, 1)
                            }
                            
                            
                            if !workords.isEmpty {
                                HStack(alignment: .center) {
                                    Text("\(self.weekDay)")
                                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                                        .foregroundColor(.black)
                                    
                                    Spacer()
                                    
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
                                }
                                .frame(width: screen.width - 50)
                            }
                            
                            if showList {
                                VStack {
                                    if self.selectedDay == "21" || self.selectedDay == "13" || self.selectedDay == "9" {
                                        HStack {
                                            Text("Events")
                                                .font(.system(size: 18, weight: .regular, design: .rounded))
                                                .foregroundColor(Color.black.opacity(0.5))
                                            
                                            Spacer()
                                        }
                                        
                                        NavigationLink(
                                        destination: EventView()) {
                                            EventContainer()
                                                .padding(.vertical, 10)
                                        }
                                        
                                        HStack {
                                            Text("Work Orders")
                                                .font(.system(size: 18, weight: .regular, design: .rounded))
                                                .foregroundColor(Color.black.opacity(0.5))
                                            
                                            Spacer()
                                        }
                                    }
                                        ForEach(workords.indices, id: \.self) { index in
                                            NavigationLink(
                                            destination: WorkOrderView(workOrder: self.workords[index])) {
                                                WorkOrderContainer(workOrder: self.workords[index])
                                            }
                                            .buttonStyle(PlainButtonStyle())
                                        }
                                }
                                .frame(width: screen.width - 54.3)
                            } else {
                                if workords.count > 2 {
                                    ZStack {
                                        TimeLines(time: self.times)
                                         
                                            VStack {
                                                
                                                NavigationLink(
                                                destination: WorkOrderView(workOrder: self.workords[0])) {
                                                    ScheduleContainer(workOrder: workords[0], frame1: 90 - 15/2)
                                                        .padding(.bottom, 60 + 15/2)
                                                }
                                                .buttonStyle(PlainButtonStyle())

                                                NavigationLink(
                                                destination: WorkOrderView(workOrder: self.workords[1])) {
                                                    ScheduleContainer(workOrder: workords[1], frame1: 465)
                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                
                                                NavigationLink(
                                                destination: WorkOrderView(workOrder: self.workords[2])) {
                                                    ScheduleContainer(workOrder: workords[2], frame1: 315)
                                                        .padding(.top, 120 + 15)

                                                }
                                                .buttonStyle(PlainButtonStyle())
                                                
                                                Spacer()

                                            }//vstack
                                            .frame(minHeight: 0, maxHeight: .infinity)
                                            .padding(.leading, 120)
                                            .padding(.trailing, 25)
                                    }
                                }//zstack
                                }//else
                        }// v
                        .navigationBarTitle("")
                        .navigationBarHidden(true)
                        .frame(width: screen.width)
                        .edgesIgnoringSafeArea(.all)
                        .padding(.top, 55)
                        .padding(.bottom, 160)
                }// z
            }// scroll
        }// nav
    }
}
