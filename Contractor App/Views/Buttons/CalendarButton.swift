//
//  CalendarButton.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/19/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct CalendarButton: View {
    var day: Day
    @Binding var isSelected: String
    var textColor = Color.black
    var body: some View {
        ZStack {
            if day.currentDay {
                Color.black.opacity(0.1)
                    .frame(width: 47, height: 47)
                    .cornerRadius(9)
            }
            if day.num == isSelected {
                Color.black
                    .frame(width: 47, height: 47)
                    .cornerRadius(9)
            }

            Text(day.num)
                .frame(width: 47, height: 47)
                .font(.system(size: 16, weight: .semibold, design: .rounded))
                .foregroundColor(getColor(selected: day.num == isSelected, month: day.ofMonth))
                .overlay(RoundedRectangle(cornerRadius: 9)
                .stroke(day.workScheduled.isEmpty || day.currentDay || day.num == isSelected ? Color.clear : Color.black.opacity(0.1), lineWidth: 1.2))
        }
    }
    
    func getColor(selected: Bool, month: Bool) -> Color {
        if selected {
            return Color.white
        } else if !month {
            return Color.black.opacity(0.1)
        } else {
            return Color.black
        }
    }
}

