//
//  Invoice.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/7/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import Foundation

struct Invoice: Identifiable {
    var id = UUID()
    
    let title: String
    let amount: String
    let notes: String
    //let photos: [String]
    let workOrder: WorkOrder
    let date: String
    //let time: String
    let isPending: Bool
}

