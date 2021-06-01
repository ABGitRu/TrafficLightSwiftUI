//
//  LightChangeButton.swift
//  TrafficLightSwiftUI
//
//  Created by Mac on 01.06.2021.
//

import SwiftUI

struct LightChangeButton: View {
    let action: () -> Void
    let title: String
    
    var body: some View {
        Button(action: action){
            Text(title)
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .shadow(color: .black, radius: 5)
        }
        .frame(width: 250, height: 80)
        .background(Color(.blue))
        .cornerRadius(20)
    }
}

struct LightChangeButton_Previews: PreviewProvider {
    static var previews: some View {
        LightChangeButton(action: {}, title: "Start")
    }
}
