//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Denis Denisov on 16/4/24.
//

import SwiftUI

struct ContentView: View {
    private enum CurrentLight {
        case red, yellow, green
    }
    
    @State private var currentLight = CurrentLight.red
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    var body: some View {
        VStack {
            VStack {
                Circle()
                    .foregroundStyle(.red)
                    .opacity(currentLight == .red 
                             ? lightIsOn
                             : lightIsOff)
                Circle()
                    .foregroundStyle(.yellow)
                    .opacity(currentLight == .yellow 
                             ? lightIsOn
                             : lightIsOff)
                Circle()
                    .foregroundStyle(.green)
                    .opacity(currentLight == .green 
                             ? lightIsOn
                             : lightIsOff)
            }
            .frame(width: 200, height: 500)
            
            Spacer()
            
            Button(action: buttonAction) {
                Text("START")
                    .font(.largeTitle)
                    .padding()
            }
            .foregroundStyle(.white)
            .background(.blue)
            .clipShape(.buttonBorder)
        }
        .padding()
    }
    
    func buttonAction() {
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

#Preview {
    ContentView()
}
