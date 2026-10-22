//
//  HomePage 2.swift
//  Halorado
//
//  Created by Zoey zhang on 10/21/26.
//


import SwiftUI

struct NewPost: View {
    var body: some View {
        VStack(spacing: 5){
            HStack {
                Image(systemName: "square.and.pencil")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Post your moment")
                    .font(.headline)
            }
            VStack{
                Text("Picture:")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(20)
                box(title: "*Picture*")
                Text("Description:")
                    .font(.headline)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(20)
                box(title: "*Description*")
                Text("Location:")
                    .font(.headline)
                    .frame(maxWidth: .infinity,alignment: .leading)
                
            }
        }
        .padding()
     Spacer()
        
    }
    func box(
        title: String
    ) -> some View{
        VStack(spacing:10){
                Text(title)
                    .font(.headline)
            }
            .frame(maxWidth: .infinity)
            .frame(height: 140)
            .padding()
            .background(AppColors.backgoundColorRed,
                in: RoundedRectangle(cornerRadius: 15)
            )
    }
}



#Preview {
    NewPost()
}
