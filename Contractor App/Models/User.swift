//
//  User.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/11/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import Foundation
import Combine

struct User: Identifiable {
    var id = UUID()
    
    let name: String
    let email: String
    let job: String
    //let photos: [String]
    let phone: String
    var notes: [String]
    let type: String
    var history: [WorkOrder]
    var rating: String
}
var works = [WorkOrder(title: "Repair Wall", time: "8:00am", location: "1525 River rd, San Antonio TX 78260", date: "March 28th, 2020", name: "Linda Miller", items: someItems, description: "Some shingles have come off on the roof from the recent storm.", notes: "Please wear masks and gloves when in the house.", zipcode: "78260", status: "past"), WorkOrder(title: "Ceiling Fan Repair", time: "8:00am", location: "1525 River rd, San Antonio TX 78260", date: "March 28th, 2020", name: "Linda Miller", items: someItems, description: "Some shingles have come off on the roof from the recent storm.", notes: "Please wear masks and gloves when in the house.", zipcode: "78260", status: "past")]
var contacts: [User] = [User(name: "Michael Garza", email: "michaelgarzak@gmail.com", job: "Garza Carpentry", phone: "(210) - 383 - 7822", notes: [], type: "co", history: [], rating: ""), User(name: "Jeff Schmidt", email: "jeffschmidt@gmail.com", job: "Amazon", phone: "(210) - 383 - 7822", notes: [], type: "co", history: [], rating: ""), User(name: "Karen Jackson", email: "karenjackson@gmail.com", job: "Geico", phone: "(210) - 383 - 7822", notes: [], type: "co", history: [], rating: ""), User(name: "Linda Miller", email: "lindamiller@gmail.com", job: "Homeowner", phone: "(210) - 383 - 7822", notes: ["Homeowner requires mask and glove use while in home","Wasn't happy with her wall color, check in later to talk about possible renovations"], type: "jack", history: works, rating: "5.0")]
var user: User = User(name: "Mike Smith", email: "mikesmith@gmail.com", job: "Tech", phone: "(210) - 383 -7022", notes: [], type: "tech", history: [], rating: "5.0")

class UserSub: ObservableObject {
    @Published var loggedIn: Bool = true
    @Published var mainPage: Bool = true
}
