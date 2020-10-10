//
//  AddNoteView.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/11/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct AddNoteView: View {
    private func endEditing() {
       UIApplication.shared.endEditing()
    }
    @State var note: String = ""
    @Binding var showModal: Bool
    var body: some View {
        VStack {
            
            XButton()
                .onTapGesture {
                    self.endEditing()
                    self.showModal.toggle()
            }
            
            Title(title: "Add Note")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .foregroundColor(.black)
                .padding(.horizontal, 25)
                .padding(.bottom, 30)
            
            HStack {
                MultiTextField("text", text: $note)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 16, weight: .semibold, design: .rounded))
                    .fixedSize(horizontal: false, vertical: true)
                    .lineLimit(20)
                    .frame(width: screen.width - 90, alignment: .leading)
                    .padding(.vertical, 15)
            }
            .frame(width: screen.width - 50)
            .background(Color("BasicLayerColor"))
            .cornerRadius(10)

            Spacer()
            .onTapGesture {
                self.endEditing()
            }
                
            Button(action: {
                self.showModal.toggle()
            }) {
                Text("Done")
                    .font(.system(size: 14, weight: .semibold, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 25)
                    .background(Color.black)
                    .cornerRadius(9)
            }
            .padding(.horizontal, 100)
            .padding(.bottom, 100)
        }
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

extension Spacer {
    public func onTapGesture(count: Int = 1, perform action: @escaping () -> Void) -> some View {
        ZStack {
            Color.black.opacity(0.001).onTapGesture(count: count, perform: action)
            self
        }
    }
}


