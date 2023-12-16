//
//  UserManager.swift
//  SwiftUI.3
//
//  Created by Евгений Лойко on 16.12.23.
//

import Combine

final class UserManager: ObservableObject {
    
    @Published var isRegistered = false
    
    var name = "Test Name"
}
