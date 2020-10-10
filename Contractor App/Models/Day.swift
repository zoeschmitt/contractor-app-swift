//
//  Day.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/19/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import Foundation

struct Day: Identifiable {
    let id = UUID()
    let workScheduled: [WorkOrder]
    let currentDay: Bool
    var selected: Bool
    let ofMonth: Bool
    let num: String
}

struct Event: Identifiable {
    let id = UUID()
    
    let title: String
    let time: String
    let people: String
    let desc: String
}

var workOrds = [WorkOrder(title: "Repair Wall", time: "8:00am", location: "1525 River rd, San Antonio TX 78260", date: "March 28th, 2020", name: "Linda Miller", items: someItems, description: "Some shingles have come off on the roof from the recent storm.", notes: "Please wear masks and gloves when in the house.", zipcode: "78260", status: "reg"), WorkOrder(title: "Install Solar Panels", time: "9:00 am - 12:00 pm", location: "862 Canyon rd, San Antonio TX 78260", date: "March 28th, 2020", name: "Linda Miller", items: someItems, description: "Some shingles have come off on the roof from the recent storm.", notes: "Please wear masks and gloves when in the house.", zipcode: "78260", status: "reg"), WorkOrder(title: "Roof Repair", time: "1:00 pm - 3:00 pm", location: "9278 West rd, San Antonio TX 78260", date: "March 28th, 2020", name: "Linda Miller", items: someItems, description: "Some shingles have come off on the roof from the recent storm.", notes: "Please wear masks and gloves when in the house.", zipcode: "78260", status: "reg")]


var week1: [Day] = [Day(workScheduled: [], currentDay: false, selected: false, ofMonth: false, num: " 26 "), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: false, num: " 27 "), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: false, num: " 28 "), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: false, num: " 29 "), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: false, num: " 30 "), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "1"), Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "2")]

var wee21: [Day] = [Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "3"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "4"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "5"), Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "6"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "7"), Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "8"), Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "9")]

var wee31: [Day] = [Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "10"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "11"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "12"), Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "13"), Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "14"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "15"), Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "16")]

var wee41: [Day] = [Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "17"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "18"), Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "19"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "20"), Day(workScheduled: workOrds, currentDay: true, selected: false, ofMonth: true, num: "21"), Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "22"), Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "23")]

var wee51: [Day] = [Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "24"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "25"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "26"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "27"), Day(workScheduled: workOrds, currentDay: false, selected: false, ofMonth: true, num: "28"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "29"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "30")]

var wee61: [Day] = [Day(workScheduled: [], currentDay: false, selected: false, ofMonth: true, num: "31"), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: false, num: " 1 "), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: false, num: " 2 "), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: false, num: " 3 "), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: false, num: " 4 "), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: false, num: " 5 "), Day(workScheduled: [], currentDay: false, selected: false, ofMonth: false, num: " 6 ")]
