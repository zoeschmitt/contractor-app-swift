//
//  ContactsView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/7/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct ContactsView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    VStack {
                        HStack(alignment: .top) {
                            TitleWithSub(title: "Contacts", subTitle: "\(contacts.count) Contacts")
                                
                             Spacer()
                             
                             Button(action: {
                                 print("hi")
                             }) {
                                 FilterButton()
                             }
                             .padding(.trailing, 5)
                             
                             NavigationLink(
                             destination: AddContactView()) {
                                 AddButton()
                             }
                         }
                         .padding(.bottom, 20)
                         .padding(.top, 55)
                         .padding(.horizontal, 25)
                        
                        SearchBar()
                            .padding(.bottom, 10)
                            .padding(.horizontal, 25)
                        
                        VStack {
                            ForEach(contacts.indices, id: \.self) { index in
                                NavigationLink(
                                destination: ContactView(contact: contacts[index])) {
                                    ContactContainerView(name: contacts[index].name, info: contacts[index].type == "jack" ?  contacts[index].job : contacts[index].email + " | " + contacts[index].job)
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                        .padding(.horizontal, 25)
                        
                        Spacer()
                    }// v
                    .navigationBarTitle("")
                    .navigationBarHidden(true)
                    .frame(width: screen.width)
                    .edgesIgnoringSafeArea(.all)
                    .padding(.top, 55)
                    .padding(.bottom, 100)
                }// z
            }// scroll
        }// nav
    }
}

