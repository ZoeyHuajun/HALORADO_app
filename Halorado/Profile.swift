//
//  Profile.swift
//  Halorado
//
//  Created by Zoey zhang on 10/21/26.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack{
            //Title
            VStack(alignment: .leading, spacing: 5){
                Text("Halorado")
                    .font(.system(size: 30, weight:.bold))
                    .foregroundStyle(.black)
                    .padding(.top,15)
                    
                Text("Health Eat. Health Life.")
                    .font(.system(size: 20, weight:.bold))
                    .foregroundStyle(AppColors.mainRed)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 20)
            
            // profile box
            HStack(spacing: 30){
                VStack(alignment: .leading,spacing:5){
                    Text("ZoeyZZZ")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundStyle(.white)
                    Text("General Member")
                        .font(.headline)
                        .foregroundStyle(AppColors.backgoundColorBlue)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                

                
                VStack{
                    Text("My Post: ")
                        .font(.system(size:18, weight:.bold))
                        .foregroundStyle(.white)
                    HStack{
                        Text("20")
                            .font(.system(size: 35, weight: .bold))
                    }
                    .foregroundStyle(AppColors.backgoundColorBlue)
                    Text("View Details")
                        .font(.headline)
                        .foregroundStyle(.gray)

                }
                
                .padding(.horizontal,20)
            }
            .modifier(PurpleBoxStyle())
            .aspectRatio(3.0, contentMode: .fit)
            
            Text("How to earn more points?")
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity, alignment: .trailing)
            
            // entry boxes
            VStack(spacing:15){
                Text("Explore More Benefits: ")
                    .bold()
                    .font(.system(size: 25, weight:.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top,5)
                HStack{
                    entryCard(
                        icon: "pizza.slice",
                        title: "Meal Recommendation",
                        description: "Explore local food"
                    )
                    entryCard(
                        icon: "calendar",
                        title: "Events",
                        description: "Explore events"

                    )
                }
                
                HStack{
                    entryCard(
                        icon: "folder",
                        title: "My Favorite",
                        description: "Favorite recipes"
                    )
                    entryCard(
                        icon: "tag",
                        title: "Partner Deals",
                        description: "Brand discounts"
                    )
                }
                .padding(.bottom)
                
                //birthday box
                HStack{
                    Image(systemName: "birthday.cake")
                        .font(.system(size: 40))
                        .foregroundStyle(.white)
                    VStack(alignment: .leading){
                        Text("Birthday Rewards")
                            .font(.system(size:22, weight:.bold))
                            .foregroundStyle(.white)

                        Text("A special surprise for you!")
                            .font(.system(size:18))
                            .foregroundStyle(AppColors.backgoundColorBlue)
                            .multilineTextAlignment(.center)
                        
                    }
                    .padding(.horizontal,20)
                    Image(systemName: "chevron.forward")
                        .foregroundStyle(.white)
                }
                .modifier(PurpleBoxStyle())
                
            }
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity,
               alignment: .top)
    }
    
    
    //entry card style
    func entryCard(
        icon: String,
        title: String,
        description: String
    ) -> some View{
        VStack(spacing: 10) {
                Image(systemName: icon)
                    .font(.system(size: 30))
                    .foregroundStyle(AppColors.mainRed)

                Text(title)
                    .font(.headline)

                Text(description)
                .font(.system(size:13))
                    .foregroundStyle(.gray)
                    .multilineTextAlignment(.center)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .frame(height: 140)
            .background(AppColors.backgoundColorRed,
                in: RoundedRectangle(cornerRadius: 15)
            )
    }

}
// box style
struct PurpleBoxStyle: ViewModifier{
    func body(content: Content) -> some View{
        content
            .frame(maxWidth: .infinity)
            .padding()
            .frame(height: 140)
            .background(
                Color(AppColors.mainBlue),
                in: RoundedRectangle(cornerRadius: 15)
            )
    }
}

#Preview{
    Profile()
}
