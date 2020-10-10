//
//  ScheduleContainer.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/6/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct ScheduleContainer: View {
    let workOrder: WorkOrder
    let frame1: CGFloat
    var body: some View {
        VStack(spacing: 4) {
            HStack {
                Text(workOrder.title)
                    .font(.system(size: 18, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
                    .lineLimit(1)
                    
                Spacer()
                Text(workOrder.time.replacingOccurrences(of: "am", with: "", options: .literal, range: nil).replacingOccurrences(of: "pm", with: "", options: .literal, range: nil))
                    .font(.system(size: 14, weight: .regular, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.5))
            }
        
            .padding(.horizontal, 20)
            .padding(.top, 20)
            
            HStack(alignment: .firstTextBaseline) {
                Image(systemName: "mappin.circle.fill")
                    .font(.system(size: 15, weight: .regular))
                    .padding(.trailing, 2)
                    .foregroundColor(.black)
                
                Text(workOrder.location)
                    .font(.system(size: 15, weight: .regular, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.8))
                    .lineLimit(2)
            }
            .padding(.horizontal, 20)
            
            Spacer()
        }
        .frame(height: frame1)
        .background(Color.black.opacity(0.1))
        .cornerRadius(14)
    }
}

