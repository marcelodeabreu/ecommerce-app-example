//
//  MainPage.swift
//  ecommerceAppExample
//
//  Created by Marcelo de Abreu on 20/07/23.
//

import SwiftUI

struct MainPage: View {
    
    @State var currentTab: Tab = .Home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        VStack(spacing: 0) {
            
            TabView(selection: $currentTab) {
                
                Text("Home")
                    .tag(Tab.Home)
                Text("Liked")
                    .tag(Tab.Liked)
                Text("Profile")
                    .tag(Tab.Profile)
                Text("Cart")
                    .tag(Tab.Cart)
            }
          
            HStack {
                
                
                
            }
            
        }
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
    }
}

enum Tab: CaseIterable {
    
    case Home
    case Liked
    case Profile
    case Cart
    
    var iconImages: UIImage {
        switch self {
            
        case .Home: return UIImage(systemName: "home")!
        case .Liked: return UIImage(systemName: "heart")!
        case .Profile: return UIImage(systemName: "person")!
        case .Cart: return UIImage(systemName: "box")!

        }
        
    }
    
}
