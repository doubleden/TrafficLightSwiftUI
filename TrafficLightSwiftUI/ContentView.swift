//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Denis Denisov on 16/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    @State private var buttonTitle = "START"
    
    var body: some View {
        VStack {
            VStack {
                CircleView(
                    color: .red,
                    opacity: currentLight == .red ? 1 : 0.3
                )
                CircleView(
                    color: .yellow,
                    opacity: currentLight == .yellow ? 1 : 0.3
                )
                CircleView(
                    color: .green,
                    opacity: currentLight == .green ? 1 : 0.3
                )
            }
            
            Spacer()
            
            Button(action: buttonAction) {
                Text(buttonTitle)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
            }
            .frame(width: 200, height: 60)
            .background(.blue)
            .clipShape(.rect(cornerRadius: 20))
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 4))
        }
        .padding()
    }
    
    private func buttonAction() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}

// MARK: - Enum
private extension ContentView {
    enum CurrentLight {
        case red, yellow, green
    }
}

#Preview {
    ContentView()
}
