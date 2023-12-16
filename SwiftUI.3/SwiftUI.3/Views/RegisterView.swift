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
    @State private var counterColor = Color.red
    @State private var isButtonDisabled = true
    
    var body: some View {
        VStack(spacing: 25) {
            HStack {
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                    .onChange(of: name) {
                        (isButtonDisabled, counterColor) = name.count >= 5 && name.count <= 15 ?
                                                   (false, .green) : (true, .red)
                    }.autocorrectionDisabled(true)
                    
                Text("\(name.count)")
                    .foregroundStyle(counterColor)
                Spacer()
            }
            
            Button(action: registerUser, label: {
                Image(systemName: "checkmark.circle")
                Text("Ok")
            }).disabled(isButtonDisabled)
        }
    }
}

extension RegisterView {
    private func registerUser() {
        user.name = name
        user.isRegistered.toggle()
    }
}

#Preview {
    RegisterView()
}
