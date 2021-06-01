//
//  ColorCircle.swift
//  TrafficLightSwiftUI
//
//  Created by Mac on 01.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    let alpha: Double
    var body: some View {
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(color)
                .opacity(alpha)
                .shadow(color: color, radius: 20)
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, alpha: 1)
    }
}
