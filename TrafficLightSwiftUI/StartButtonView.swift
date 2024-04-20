//
//  StartButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Denis Denisov on 20/4/24.
//

import SwiftUI

struct StartButtonView: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundStyle(.white)
                .font(.largeTitle)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 4))
    }
}

#Preview {
    StartButtonView(title: "START", action: {})
}
