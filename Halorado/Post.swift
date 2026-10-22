//
//  Post.swift
//  Halorado
//
//  Created by Zoey zhang on 10/21/26.
//

import SwiftUI

struct Post: View{

    var body : some View{
        VStack {
            NavigationStack{
                HStack{
                    Image(systemName: "heart")
                        .imageScale(.large)
                        .foregroundStyle(AppColors.mainBlue)
                    Text("Moment")
                        .font(.system(size: 40, weight: .bold))
                }
                VStack{
                    NavigationLink(destination: NewPost()) {
                        entryCard(
                            icon: "photo",
                            title: "Post",
                            description: "Share your moment!"
                            )
                    }
                    NavigationLink(destination: NewRecipe()){
                        entryCard(
                            icon: "square.and.pencil",
                            title: "Recipe",
                            description: "Share your food!"
                            )
                    }
                    .padding()
                }
            }

        }
    }
}

func entryCard(
    icon: String,
    title: String,
    description: String
) -> some View{
    VStack(spacing: 10) {
            Image(systemName: icon)
                .font(.system(size: 30))
                .foregroundStyle(.white)

            Text(title)
                .font(.headline)
                .foregroundStyle(.white)

            Text(description)
            .font(.system(size:13))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: 340)
        .padding()
        .frame(height: 140)
        .background(Color(AppColors.mainBlue),
            in: RoundedRectangle(cornerRadius: 15)
        )
}


#Preview{
    Post()
}
