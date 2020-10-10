//
//  WorkOrdersView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/5/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct WorkOrdersView: View {
    let workOrders = [WorkOrder(title: "Repair Wall", time: "8:00am", location: "1525 River rd, San Antonio TX 78260", date: "March 28th, 2020", name: "Linda Miller", items: someItems , description: "Some shingles have come off on the roof from the recent storm.", notes: "Please wear masks and gloves when in the house.", zipcode: "78260", status: "reg"), WorkOrder(title: "Work Recommendation", time: "8:00am", location: "1525 River rd, San Antonio TX 78260", date: "March 28th, 2020", name: "Linda Miller", items: someItems, description: "Some shingles have come off on the roof from the recent storm.", notes: "Please wear masks and gloves when in the house.", zipcode: "78260", status: "recom"), WorkOrder(title: "Install Solar Panels", time: "9:00 am - 12:00 pm", location: "862 Canyon rd, San Antonio TX 78260", date: "March 28th, 2020", name: "Linda Miller", items: [], description: "Some shingles have come off on the roof from the recent storm.", notes: "Please wear masks and gloves when in the house.", zipcode: "78260", status: "mod"), WorkOrder(title: "Roof Repair", time: "1:00 pm - 3:00 pm", location: "9278 West rd, San Antonio TX 78260", date: "March 28th, 2020", name: "Linda Miller", items: [], description: "Some shingles have come off on the roof from the recent storm.", notes: "Please wear masks and gloves when in the house.", zipcode: "78260", status: "new"), WorkOrder(title: "Roof Repair", time: "1:00 pm - 3:00 pm", location: "9278 West rd, San Antonio TX 78260", date: "March 28th, 2020", name: "Linda Miller", items: someItems, description: "Some shingles have come off on the roof from the recent storm.", notes: "Please wear masks and gloves when in the house.", zipcode: "78260", status: "dec")]
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
                        
                        Button(action: {
                            print("hi")
                        }) {
                            FilterButton()
                        }
                        .padding(.trailing, 5)
                        
                        NavigationLink(
                        destination: AddWorkOrderView()) {
                            AddButton()
                        }
                    }
                    .padding(.bottom, 10)
                    
                    TitleWithSub(title: "Work Orders", subTitle: "\(workOrders.count) Work Orders")
                        .padding(.bottom, 20)

                    SearchBar()
                    
                    VStack {
                        ForEach(workOrders.indices, id: \.self) { index in
                            NavigationLink(
                            destination: WorkOrderView(workOrder: self.workOrders[index])) {
                                WorkOrderContainer(workOrder: self.workOrders[index])
                            }
                        }
                    }
                    .frame(width: screen.width - 54.3)
                    .padding(.top, 10)
                    
                    
                    Spacer()
                }
                .padding(.vertical, 55)
        }
        .edgesIgnoringSafeArea(.all)
        .padding(.horizontal, 25)
        .padding(.top, 55)
        .padding(.bottom, 100)
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
    }
}
