//
//  LoginPageModel.swift
//  ecommerceAppExample
//
//  Created by Marcelo de Abreu on 13/07/23.
//

import SwiftUI

class LoginPageModel: ObservableObject {
    
    // Login
    
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var showPassword: Bool = false
    
    // Register
    
    @Published var registerUser: Bool = false
    @Published var reEnterPassword: String = ""
    @Published var showReEnterPassword: Bool = false
    
    func Login() {
        
    }
    
    func Register () {
        
    }
    
    func ForgotPassword () {
        
    }
    
}
