//
//  MainView.swift
//  SwiftUI.3
//
//  Created by Евгений Лойко on 16.12.23.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject private var user: UserManager
    
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack {
            Text("Hello, \(user.name)!")
                .font(.title)
                .offset(x: 0, y: 100)
            Spacer()
            
            Text("\(timer.counter)")
                .font(.largeTitle)
            Spacer()
            
            ButtonView(timer: timer)
            Spacer()
            
            Button(action: logOut) {
                Text("LogOut")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .shadow(color: .black, radius: 5)
            }
            .frame(width: 200, height: 60)
            .background(Color.orange)
            .clipShape(.rect(cornerRadius: 20))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4)
            )
        }
    }
}

extension MainView {
    private func logOut() {
        user.name = ""
        user.isRegistered.toggle()
    }
}

#Preview {
    MainView()
        .environmentObject(UserManager())
}
