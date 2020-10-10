//
//  WorkOrder.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/5/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import Foundation

struct WorkOrder: Identifiable {
    var id = UUID()

    let title: String
    let time: String
    let location: String
    let date: String
    let name: String
    //let estimate: Estimate
    //let room: Room
    let items: [Item]
    let description: String
    let notes: String
    //let photos: [String]
    let zipcode: String
    let status: String
}

struct Item: Identifiable {
    var id = UUID()
    
    let name: String
    let brand: String
    let DOP: String
    let cost: String
    let serial: String
    let size: String
    let description: String
    let warranty: String
    //let photos: [String]
}
var someItems: [Item] = [Item(name: "Couch", brand: "Living Spaces", DOP: "Dec 1st, 2019", cost: "700.98", serial: "ankfw389q8274qhdj", size: "100 x 300", description: "Living room couch", warranty: "1 Year"), Item(name: "Ceiling Fan", brand: "Living Spaces", DOP: "Dec 1st, 2019", cost: "700.98", serial: "ankfw389q8274qhdj", size: "100 x 300", description: "Living room fan", warranty: "1 Year")]
