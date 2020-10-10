//
//  WorkOrderContainer.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/5/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct WorkOrderContainer: View {
    let recWidth: CGFloat = 4.3
    let workOrder: WorkOrder
    var body: some View {
        ZStack(alignment: .leading) {
            HStack {
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text(workOrder.title)
                            .font(.system(size: 20, weight: .semibold, design: .rounded))
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        if getTag() != "" {
                            Text(getTag())
                                .font(.system(size: 12, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                                .padding(.vertical, 5)
                                .padding(.horizontal, 10)
                                .background(getColor())
                                .cornerRadius(4)
                        }
                    }
                    HStack {
                        Image(systemName: "clock.fill")
                            .font(.system(size: 14, weight: .semibold))
                            .padding(.trailing, 5)
                            .foregroundColor(.black)
                        
                        Text(workOrder.time)
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                            .foregroundColor(Color.black.opacity(0.5))
                            .lineLimit(1)
                    }
                    
                    HStack {
                        Image(systemName: "mappin.circle.fill")
                            .font(.system(size: 14, weight: .semibold))
                            .padding(.trailing, 5)
                            .foregroundColor(.black)
                        
                        Text(workOrder.location)
                            .font(.system(size: 14, weight: .regular, design: .rounded))
                            .foregroundColor(Color.black.opacity(0.5))
                            .lineLimit(1)
                    }
                }
                .padding(.vertical, 20)
                .padding(.trailing, 20)
                .padding(.leading, 25)
                
                Spacer()
            }
            .background(Color("BasicLayerColor"))
            .cornerRadius(14)
            .padding(.vertical, 2)
            
            Rectangle().foregroundColor(.black)
                .background(Color.black)
                .cornerRadius(1.5)
                .frame(width: recWidth, height: 80)
                .offset(x: -2.15, y: 0)
        }
    }
    
    func getTag() -> String {
        if workOrder.status == "mod" {
            return "Modified"
        } else if workOrder.status == "new" {
            return "New"
        } else if workOrder.status == "event" {
            return "Event"
        } else if workOrder.status == "prog" {
            return "In Progress"
        } else if workOrder.status == "dec" {
            return "Declined"
        } else {
            return ""
        }
    }
    
    func getColor() -> Color {
        if workOrder.status == "mod" {
            return Color(#colorLiteral(red: 1, green: 0.5661600232, blue: 0.9072331786, alpha: 1))
        } else if workOrder.status == "new" {
            return .black
        } else if workOrder.status == "event" {
            return Color(#colorLiteral(red: 0.2525989413, green: 0.3289020658, blue: 1, alpha: 1))
        } else if workOrder.status == "prog" {
            return Color(#colorLiteral(red: 0.329452157, green: 0.761251986, blue: 1, alpha: 1))
        } else if workOrder.status == "dec" {
            return Color(#colorLiteral(red: 1, green: 0.3793008924, blue: 0.4225401282, alpha: 1))
        } else {
            return Color.clear
        }
    }
}

