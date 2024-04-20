//
//  TrafficLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Denis Denisov on 18/4/24.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundStyle(color)
            .opacity(opacity)
            .overlay(Circle().stroke(lineWidth: 4))
            .padding(.bottom, 5)
    }
}

#Preview {
    CircleView(color: .red, opacity: 1)
}
