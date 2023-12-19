//
//  TimeCounter.swift
//  SwiftUI.3
//
//  Created by Евгений Лойко on 16.12.23.
//

import Combine
import Foundation

enum ButtonState: String {
    case start = "Start"
    case reset = "Reset"
    case wait = "Wait..."
}

final class TimeCounter: ObservableObject {
    
    var objectWillChange = PassthroughSubject<TimeCounter, Never>()
    
    var counter = 3
    var timer: Timer?
    var buttonTitle: ButtonState = .start
    
    func startTimer() {
        
        if counter > 0, timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 1,
                                         target: self,
                                         selector: #selector(updateCounter),
                                         userInfo: nil,
                                         repeats: true)
        }
        
        updateUIStateButton()
    }
    
    private func updateUIStateButton() {
        
        if buttonTitle == .reset {
            counter = 3
            buttonTitle = .start
        } else {
            buttonTitle = .wait
        }
        
        objectWillChange.send(self)
    }
    
    @objc private func updateCounter() {
        
        if counter > 0 {
            counter -= 1
        } else {
            timer?.invalidate()
            timer = nil
            buttonTitle = .reset
        }
        
        objectWillChange.send(self)
    }
}
