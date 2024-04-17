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
    @State private var buttonTitle = "START"
    
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
                    .overlay(Circle().stroke(lineWidth: 4))
                Circle()
                    .foregroundStyle(.yellow)
                    .opacity(currentLight == .yellow 
                             ? lightIsOn
                             : lightIsOff)
                    .overlay(Circle().stroke(lineWidth: 4))
                Circle()
                    .foregroundStyle(.green)
                    .opacity(currentLight == .green
                             ? lightIsOn
                             : lightIsOff)
                    .overlay(Circle().stroke(lineWidth: 4))
            }
            .frame(width: 200, height: 300)
            
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

#Preview {
    ContentView()
}
