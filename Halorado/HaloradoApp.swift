//
//  HaloradoApp.swift
//  Halorado
//
//  Created by Zoey zhang on 10/21/26.
//

import SwiftUI

@main
struct HaloradoApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}

struct MainTabView: View{
    var body: some View{
        TabView{
            HomePage()
                .tabItem{
                    Label("HOME", systemImage: "house")
                }
            Recipe()
                .tabItem{
                    Label("Recipe", systemImage: "book.pages")
                }
            Post()
                .tabItem{
                    Label("Post", systemImage: "bubble.middle.bottom")
                }
            
            Profile()
                .tabItem{
                    Label("Profile", systemImage: "person")
                }
                
        }
        .tint(AppColors.mainRed)
        .frame(maxWidth: .infinity, maxHeight: .infinity,
               alignment: .top)
        .background(AppColors.backgoundColorRed)
    }
}

#Preview{
    MainTabView()
    
}
