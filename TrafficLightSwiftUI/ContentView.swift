//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Mac on 01.06.2021.
//

import SwiftUI

enum CurrentSignal {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State var buttonText = "Start"
    
    @State var currentSignal = CurrentSignal.red
    
    @State var redSignalState = 0.3
    @State var yellowSignalState = 0.3
    @State var greenSignalState = 0.3
    
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack{
                VStack{
                    ColorCircle(color: .red,
                                alpha: redSignalState)
                    ColorCircle(color: .yellow,
                                alpha: yellowSignalState)
                    ColorCircle(color: .green,
                                alpha: greenSignalState)
                }
                .padding(.bottom, 100.0)
                LightChangeButton(action: {
                    changeState()
                }, title: buttonText)
            }
        }
    }
    
    private func changeState() {
        let signalIsOn = 1.0
        let signalIsOff = 0.3
        
        switch currentSignal {
        case .red:
            if buttonText == "Start" { buttonText = "Next" }
            currentSignal = .yellow
            greenSignalState = signalIsOff
            redSignalState = signalIsOn
        case .yellow:
            currentSignal = .green
            redSignalState = signalIsOff
            yellowSignalState = signalIsOn
        case .green:
            currentSignal = .red
            greenSignalState = signalIsOn
            yellowSignalState = signalIsOff
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
