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
        }
    }
}

#Preview {
    MainView()
        .environmentObject(UserManager())
}
