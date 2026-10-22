//
//  ContentView.swift
//  Halorado
//
//  Created by Zoey zhang on 10/21/26.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 5){
            Text("Halorado")
                .font(.system(size:30,weight: .bold))
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, home!")
            Spacer()
        }
        .padding()
     
    }
}

#Preview {
    HomePage()
}
