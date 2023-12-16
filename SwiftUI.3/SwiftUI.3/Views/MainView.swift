//
//  MainView.swift
//  SwiftUI.3
//
//  Created by Евгений Лойко on 16.12.23.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        VStack {
            Text("Hello, \(user.name)!")
                .font(.title)
        }
    }
}

#Preview {
    MainView()
        .environmentObject(UserManager())
}
