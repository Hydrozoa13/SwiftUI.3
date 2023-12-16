//
//  UserManager.swift
//  SwiftUI.3
//
//  Created by Евгений Лойко on 16.12.23.
//

import Combine
import Foundation

final class UserManager: ObservableObject {
    
    @Published var isRegistered = false
    
    var name: String {
        get {
            guard let registeredName = UserDefaults.standard.string(forKey: "name") else {
                return ""
            }
                        
            return registeredName
        }
        
        set {
            UserDefaults.standard.set(newValue, forKey: "name")
        }
    }
}
