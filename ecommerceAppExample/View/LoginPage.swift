//
//  LoginPage.swift
//  ecommerceAppExample
//
//  Created by Marcelo de Abreu on 13/07/23.
//

import SwiftUI

struct LoginPage: View {
    
    @StateObject var loginData: LoginPageModel = LoginPageModel()
    
    var body: some View {
        
        VStack {
            
            Text("Welcome\nback.")
                .font(.system(size: 50))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .bold()
                .frame(height: getRect().height / 3.5)
                .foregroundColor(.white)
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack (spacing: 15) {
                    
                    Text(loginData.registerUser ? "Register" : "Login")
                        .font(.system(size: 22))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(10)
                        .bold()
                    
                    CustomTextField(icon: "envelope", title: "Email", hint: "marcelo@deabreu.com", value: $loginData.email, showPassword:
                        .constant(false))
                        .padding()
                    
                    CustomTextField(icon: "lock", title: "Password", hint: "123456", value: $loginData.password, showPassword: $loginData.showPassword)
                        .padding()
                    
                    // Reenter password
                    
                    if loginData.registerUser {
                        CustomTextField(icon: "envelope", title: "Reenter Password", hint: "123456", value: $loginData.reEnterPassword, showPassword: $loginData.showReEnterPassword)
                            .padding()
                    }
                    // Forgot Password Button
                    Button {
                        loginData.ForgotPassword()
                    } label: {
                        
                        Text("Forgot Password?")
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.purple)
                    }
                    .padding(.top, 8)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    // Login Button
                    
                    Button {
                        if loginData.registerUser {
                            loginData.Register()
                        } else {
                            loginData.Login()
                        }
                    } label: {
                        
                        Text("Login")
                        .font(.system(size: 17))
                        .padding(.vertical, 20)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color.white)
                        .background(Color.purple)
                        .cornerRadius(15)
                    }
                    .padding(.top, 25)
                    .padding(.horizontal)
                    
                    // Register User Button
                    
                    Button {
                        withAnimation {
                            loginData.registerUser.toggle()
                        }
                    } label: {
                        
                        Text(loginData.registerUser ? "Back to login" : "Create Account")
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.purple)
                    }
                    .padding(.top, 8)
                    
                }
                .padding(30)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.purple)
        
    }
    
    @ViewBuilder
    func CustomTextField(icon: String, title: String, hint: String, value: Binding<String>, showPassword: Binding<Bool>)-> some View {
        
        VStack(alignment: .leading, spacing: 12) {
            
            Label {
                Text(title)
                    .font(.system(size: 14))
            } icon: {
                Image(systemName: icon)
            }
            .foregroundColor(Color.black.opacity(0.8))
            
            if title.contains("Password") && !showPassword.wrappedValue {
                SecureField(hint, text: value)
            } else {
                TextField(hint, text: value)
            }
            
            Divider()
                .background(Color.black.opacity(0.8))
        }
        .overlay(
            
            Group{
                
                if title.contains("Password") {
                    Button(action:  {
                        showPassword.wrappedValue.toggle()
                    }, label: {
                        Text(showPassword.wrappedValue ? "Hide" : "Show")
                            .font(.system(size: 13).bold())
                            .foregroundColor(Color.purple)
                    })
                    .offset(y: 8)
                }
                
            }
            
            ,alignment: .trailing
        
        )
    }
    
    
    
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
