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
                    
                    Text("Login")
                        .font(.system(size: 30))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(30)
                        .bold()
                    
                    // CustomTextField(icon: <#T##String#>, title: <#T##String#>, hint: <#T##String#>, value: <#T##Binding<String>#>, showPassword: <#T##Binding<Bool>#>)
                    
                }
                
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
                    .font(.system(size: 30))
            } icon: {
                Image(systemName: icon)
            }
            .foregroundColor(Color.black.opacity(0.8))
            
            TextField(hint, text: value)
            
            Divider()
        }
        
    }
    
    
    
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
