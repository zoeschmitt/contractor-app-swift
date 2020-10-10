//
//  Notification.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/4/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import Foundation

struct Notification: Identifiable {
    var id = UUID()
    var icon: String
    var title: String
    var desc: String
    var time: String
}
