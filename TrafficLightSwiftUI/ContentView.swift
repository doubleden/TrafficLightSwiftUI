//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Denis Denisov on 16/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.off
    @State private var buttonTitle = "START"
    
    var body: some View {
        VStack {
            VStack(spacing: 15) {
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
            
            StartButtonView(title: buttonTitle, action: buttonAction)
        }
        .padding()
    }
    
    private func buttonAction() {
        if buttonTitle == "START" {
            buttonTitle = "NEXT"
        }
        
        switch currentLight {
        case .off: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

// MARK: - Enum
private extension ContentView {
    enum CurrentLight {
        case off, red, yellow, green
    }
}

#Preview {
    ContentView()
}
