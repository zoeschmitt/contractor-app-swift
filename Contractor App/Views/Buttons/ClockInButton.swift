//
//  ClockInButtonView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/4/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct ClockInButton: View {
    
    @State var clockedIn: Bool = false
    @State var timerDate = Timer()
    @State var date = Date()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        Button(action: {
            self.clockedIn.toggle()
        }) {
            HStack(spacing: 15) {
                Rectangle()
                    .frame(width: 40, height: 40)
                    .cornerRadius(9)
                    .accentColor(clockedIn ? Color.white.opacity(0.2) : Color("BasicLayerColor"))
                    .overlay(Image(systemName: "clock.fill").accentColor(clockedIn ? .white : .black), alignment: .center)
                
                VStack(alignment: .leading) {
                    Text(clockedIn ? "Clock Out" : "Clock In")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                        .foregroundColor(clockedIn ? .white : .black)
                    
//                    if clockedIn {
//                        Text("\(timeString(date: timerDate, timer: true))")
//                        .onReceive(timer) { input in
//                            self.timerDate = input
//                        }
//                        .font(.system(size: 12, weight: .light, design: .rounded))
//                        .foregroundColor(clockedIn ? .white : Color.black.opacity(0.5))
//                    } else {
                        Text("\(timeString(date: date, timer: false))")
                            .onAppear(perform: {let _ = self.updateTimer})
                            .font(.system(size: 12, weight: .light, design: .rounded))
                            .foregroundColor(clockedIn ? .white : Color.black.opacity(0.5))
                  //  }
                }
                
                Spacer()
            }
            .padding(.leading, 5)
        }
        .frame(width: 160, height: 50)
        .background(clockedIn ? .black : Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.05), radius: 15, x: 0, y: 0)
        
    }
    
    var timerFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        return formatter
    }
    
    var dateFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"
        return formatter
    }
    
    func timeString(date: Date, timer: Bool) -> String {
        var time: String = ""
        if timer {
            time = timerFormat.string(from: date)
        } else {
            time = dateFormat.string(from: date)
        }
         return time
    }
    
    var updateTimer: Timer {
         Timer.scheduledTimer(withTimeInterval: 1, repeats: true,
                              block: {_ in
                 self.date = Date()
               })
    }
}

