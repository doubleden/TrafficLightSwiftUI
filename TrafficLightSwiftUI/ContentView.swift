//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Denis Denisov on 16/4/24.
//

import SwiftUI

struct ContentView: View {
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    var body: some View {
        VStack {
            VStack {
                Circle()
                    .foregroundStyle(.red)
                Circle()
                    .foregroundStyle(.yellow)
                Circle()
                    .foregroundStyle(.green)
            }
            .frame(width: 200, height: 500)
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
