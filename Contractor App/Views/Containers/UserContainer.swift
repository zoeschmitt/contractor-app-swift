//
//  UserContainer.swift
//  Contractor App
//
//  Created by Zoe Schmitt on 5/28/20.
//  Copyright © 2020 Zoeschmitt. All rights reserved.
//

import SwiftUI

struct UserContainer: View {
    let image: String
    let name: String
    let type: String
    var body: some View {
         HStack {
             VStack {
                 Image(image)
                     .resizable()
             }
             .frame(width: 65, height: 65)
             .clipShape(Circle())
             .padding(.all, 15)
             
            VStack(alignment: .leading, spacing: 0) {
                HStack(alignment: .center) {
                    Text(name)
                         .font(.system(size: 20, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                    
                    Image(systemName: "star.fill")
                        .font(.system(size: 16, weight: .semibold, design: .rounded))
                        .foregroundColor(.yellow)
                    
                    Text("4.8")
                     .font(.system(size: 16, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
                }
                
                Text(type)
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                    .foregroundColor(Color.black.opacity(0.5))
            }
            .padding(.trailing, 15)
            
            Spacer()
             
         }
         .frame(width: screen.width - 50)
         .background(Color("BasicLayerColor"))
         .cornerRadius(14)
    }
}

struct UserContainer_Previews: PreviewProvider {
    static var previews: some View {
        UserContainer(image: "Rectangle", name: "Mike Smith", type: "Machine Repair")
    }
}
