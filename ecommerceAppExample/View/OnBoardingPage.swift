//
//  OnBoardingPage.swift
//  ecommerceAppExample
//
//  Created by Marcelo de Abreu on 11/07/23.
//

import SwiftUI

struct OnBoardingPage: View {
    
    @State var showLoginPage: Bool = false
    
    var body: some View {
        
        VStack {
            
            Text("search for new devices.")
                .font(.system(size: 50))
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            Image("DevMktLogo2")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
            
            Button("Get Started!") {
                
                withAnimation {
                    
                    showLoginPage = true
                    
                }
                
            }
            .font(.system(size: 18))
            .padding(.vertical, 20)
            .frame(width: 200)
            .foregroundColor(Color.white)
            .background(Color.purple)
            .cornerRadius(10)
        }
        
        .overlay(
            Group {
                
                if showLoginPage {
                    LoginPage()
                        .transition(.move(edge: .bottom))
                }
                
            }
        )
        
    }
}

struct OnBoardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingPage()
    }
}

extension View {
    
    func getRect()->CGRect {
        return UIScreen.main.bounds
    }
    
}
