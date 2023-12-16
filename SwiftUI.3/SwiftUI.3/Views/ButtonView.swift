//
//  ButtonView.swift
//  SwiftUI.3
//
//  Created by Евгений Лойко on 16.12.23.
//

import SwiftUI

struct ButtonView: View {
    
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text("\(timer.buttonTitle.rawValue)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .shadow(color: .black, radius: 5)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

#Preview {
    ButtonView(timer: TimeCounter())
}
