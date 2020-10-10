//
//  CommerceView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/7/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct CommerceView: View {
    let estimates: [Estimate] = [Estimate(title: "Repair Wall", amount: "450.00", date: "Created Yesterday"), Estimate(title: "Knock Down Wall", amount: "1099.00", date: "Created Yesterday"), Estimate(title: "Paint Living Room", amount: "250.50", date: "3/15/20")]
    let invoices: [Estimate] = [Estimate(title: "Repair Wall", amount: "450.00", date: "Created Yesterday"), Estimate(title: "Knock Down Wall", amount: "1099.00", date: "Created Yesterday"), Estimate(title: "Paint Living Room", amount: "250.50", date: "3/15/20")]
    let all: [Estimate] = [Estimate(title: "Repair Wall", amount: "450.00", date: "Created Yesterday"), Estimate(title: "Knock Down Wall", amount: "1099.00", date: "Created Yesterday"), Estimate(title: "Paint Living Room", amount: "250.50", date: "3/15/20"), Estimate(title: "Repair Wall", amount: "450.00", date: "Created Yesterday"), Estimate(title: "Knock Down Wall", amount: "1099.00", date: "Created Yesterday"), Estimate(title: "Paint Living Room", amount: "250.50", date: "3/15/20")]
    @State var selected: String = "All"
    @State var showingActionSheet: Bool = false
    @State var addPage = false
    @State var invoice = false
    @State var allWidth: CGFloat = .zero
    @State var invWidth: CGFloat = .zero
    @State var estWidth: CGFloat = .zero
    @State var barLocation: CGFloat = 0
    @State var barWidth: CGFloat = 10.0
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    VStack {
                        HStack(alignment: .top) {
                            Title(title: "Estimates & \nInvoices")
                                .multilineTextAlignment(.leading)
                                .fixedSize()
                               
                            Spacer()
                            
                            Button(action: {
                                print("hi")
                            }) {
                                FilterButton()
                            }
                            .padding(.trailing, 5)
                            
                            Button(action: {
                                self.showingActionSheet.toggle()
                            }) {
                                AddButton()
                            }
                            .actionSheet(isPresented: $showingActionSheet) {
                                ActionSheet(title: Text("Add New Estimate or Invoice"), buttons: [
                                    .default(Text("Invoice"), action: {
                                        self.addPage = true
                                        self.invoice = true
                                    }),
                                    .default(Text("Estimate"), action: {
                                        self.addPage = true
                                        self.invoice = false
                                    }),
                                    .cancel()])
                            }
                        }
                        .padding(.bottom, 20)
                        .padding(.top, 55)
                        
                        
                        SearchBar()
                            .padding(.bottom, 10)
                        
                        VStack {
                            HStack(alignment: .center) {
                                
                                Text("All")
                                    .font(.system(size: 24, weight: .semibold, design: .rounded))
                                    .foregroundColor(.black)
                                    .padding(.trailing, 15)
                                    .overlay(GeometryReader { geo in
                                        Color.white.opacity(0.0001)
                                        .onAppear() {
                                            self.allWidth = geo.size.width
                                        }
                                        .onTapGesture {
                                            self.selected = "All"
                                            self.barLocation = 0
                                            self.barWidth = self.allWidth / 2
                                        }
                                    })
                                
                                Text("Invoices")
                                    .font(.system(size: 24, weight: .semibold, design: .rounded))
                                    .foregroundColor(.black)
                                    .padding(.trailing, 15)
                                    .overlay(GeometryReader { geo in
                                        Color.white.opacity(0.0001)
                                        .onAppear() {
                                            self.invWidth = geo.size.width
                                        }
                                        .onTapGesture {
                                            self.selected = "Inv"
                                            self.barLocation = self.allWidth + 8
                                            self.barWidth = self.invWidth / 2
                                        }
                                    })
                            
                                Text("Estimates")
                                .font(.system(size: 24, weight: .semibold, design: .rounded))
                                .foregroundColor(.black)
                                .padding(.trailing, 15)
                                .overlay(GeometryReader { geo in
                                    Color.white.opacity(0.0001)
                                    .onAppear() {
                                        self.estWidth = geo.size.width
                                    }
                                    .onTapGesture {
                                        self.selected = "Est"
                                        self.barLocation = self.allWidth + self.invWidth + 18
                                        self.barWidth = self.estWidth / 2
                                    }
                                })
                   
                                Spacer()
                            }
                            
                            HStack {
                                Rectangle()
                                    .frame(width: barWidth, height: 4)
                                    .background(Color.black)
                                    .cornerRadius(1)
                                    .padding(.leading, barLocation)
                                    .animation(.interactiveSpring())
                                
                                Spacer()
                            }
                        }
                        
                        VStack {
                            if selected == "Est" {
                                ForEach(estimates.indices, id: \.self) { index in
                                    NavigationLink(
                                    destination: ViewCommerceView(invoice: false, name: self.estimates[index].title, amount: self.estimates[index].amount)) {
                                        CommerceContainer(icon: "doc.text.fill", title: self.estimates[index].title, time: self.estimates[index].date, amount: self.estimates[index].amount, isPending: false)
                                    }
                                }
                            } else if selected == "Inv" {
                                ForEach(invoices.indices, id: \.self) { index in
                                    NavigationLink(
                                    destination: ViewCommerceView(invoice: true, name: self.invoices[index].title, amount: self.invoices[index].amount)) {
                                        CommerceContainer(icon: "tag.fill", title: self.invoices[index].title, time: self.invoices[index].date, amount: self.invoices[index].amount, isPending: index == 1 ? true : false)
                                    }
                                }
                            } else {
                                ForEach(all.indices, id: \.self) { index in
                                    NavigationLink(
                                    destination: ViewCommerceView(invoice: index % 2 == 0 ? true : false, name: self.all[index].title, amount: self.all[index].amount)) {
                                        CommerceContainer(icon: index % 2 == 0 ? "tag.fill" : "doc.text.fill", title: self.all[index].title, time: self.all[index].date, amount: self.all[index].amount, isPending: index == 2 ? true : false)
                                    }
                                }
                            }
                        }
                        .padding(.top, 20)
                        
                        NavigationLink(destination: AddCommerceView(invoice: self.invoice, addPage: $addPage), isActive: self.$addPage ) {
                           EmptyView()
                        }
                        
                        Spacer()
                    }// v
                    .padding(.top, 55)
                    .padding(.bottom, 150)
                    .padding(.horizontal, 25)
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .frame(width: screen.width)
                    .edgesIgnoringSafeArea(.all)
                }// z
            }// scroll
        }// nav
    }
    
    func getPadding() -> CGFloat {
        
        if selected == "All" {
            return .zero
        } else if selected == "Inv" {
            return CGFloat(5)
        } else {
            return .zero
        }
    }
}

struct CommerceView_Previews: PreviewProvider {
    static var previews: some View {
        CommerceView()
    }
}
