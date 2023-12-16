//
//  RegisterView.swift
//  SwiftUI.3
//
//  Created by Евгений Лойко on 16.12.23.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject private var user: UserManager
    
    @State private var name = ""
    
    var body: some View {
        VStack {
            TextField("Enter your name...", text: $name)
                .multilineTextAlignment(.center)
            
            Button(action: registerUser, label: {
                Image(systemName: "checkmark.circle")
                Text("Ok")
            })
        }
    }
}

extension RegisterView {
    
    private func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegistered.toggle()
        }
    }
}

#Preview {
    RegisterView()
}
