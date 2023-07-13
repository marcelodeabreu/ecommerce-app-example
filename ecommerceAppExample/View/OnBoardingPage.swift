//
//  OnBoardingPage.swift
//  ecommerceAppExample
//
//  Created by Marcelo de Abreu on 11/07/23.
//

import SwiftUI

struct OnBoardingPage: View {
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
                
                
                
            }
            .foregroundColor(.black)
        }
        
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
