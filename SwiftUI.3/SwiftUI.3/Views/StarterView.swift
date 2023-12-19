//
//  StarterView.swift
//  SwiftUI.3
//
//  Created by Евгений Лойко on 16.12.23.
//

import SwiftUI

struct StarterView: View {
    
    @EnvironmentObject private var user: UserManager
    
    var body: some View {
        Group {
            if UserDefaults.standard.string(forKey: "name") != "" {
                MainView()
            } else {
                RegisterView()
            }
        }
    }
}
