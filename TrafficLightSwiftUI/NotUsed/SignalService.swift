//
//  SignalService.swift
//  TrafficLightSwiftUI
//
//  Created by Mac on 01.06.2021.
//

//import SwiftUI

//enum CurrentSignal {
//    case red
//    case yellow
//    case green
//}

//class SignalService: ObservableObject {
//
//    static let shared = SignalService()
//
//    @Published var buttonText = "Start"
//    
//    @Published  var currentSignal = CurrentSignal.red
//
//    @Published var redSignalState = 0.3
//    @Published var yellowSignalState = 0.3
//    @Published var greenSignalState = 0.3
//
//     func changeState() {
//        let signalIsOn = 1.0
//        let signalIsOff = 0.3
//
//
//        switch currentSignal {
//        case .red:
//            if buttonText == "Start" { buttonText = "Next" }
//            currentSignal = .yellow
//            greenSignalState = signalIsOff
//            redSignalState = signalIsOn
//        case .yellow:
//            currentSignal = .green
//            redSignalState = signalIsOff
//            yellowSignalState = signalIsOn
//        case .green:
//            currentSignal = .red
//            greenSignalState = signalIsOn
//            yellowSignalState = signalIsOff
//        }
//    }
//    private init() {}
//
//}
