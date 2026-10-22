//
//  Recipe.swift
//  Halorado
//
//  Created by Zoey zhang on 10/21/26.
//

import SwiftUI

struct Recipe: View{
    var body : some View{
        VStack(alignment: .leading,spacing:5) {
            Text("New Recipes")
            Text("My Recipes")
            Spacer()
        }
        
        .font(.system(size: 30, weight: .bold))
        .padding()
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .topLeading)
    
    }
}
#Preview{
    Recipe()
}
