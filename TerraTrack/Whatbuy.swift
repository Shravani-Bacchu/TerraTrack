//
//  foodPage.swift
//  TerraTrack
//
//  Created by Scholar on 13/08/2024.
//

import SwiftUI

struct Whatbuy: View {
    var body: some View{
        NavigationStack{
            ZStack{
                Color(.customBrown)
                    .ignoresSafeArea()
                VStack{
                    NavigationLink(destination: mapPage()) {
                        ZStack{
                            Rectangle()
                                .frame(width: 300.0, height: 150.0)
                                .foregroundColor(Color.buttonColor1)
                                .cornerRadius(30)
                            Text("Clothes")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all, 35.0/*@END_MENU_TOKEN@*/)
                    NavigationLink(destination: foodPage() ) {
                        ZStack{
                            Rectangle()
                                .frame(width: 300.0, height: 150.0)
                                .foregroundColor(Color.buttonColor1)
                                .cornerRadius(30)
                            Text("Food")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all, 35.0/*@END_MENU_TOKEN@*/)
                    NavigationLink(destination: transportationPage()) {
                        ZStack{
                            Rectangle()
                                .frame(width: 300.0, height: 150.0)
                                .foregroundColor(Color.buttonColor1)
                                .cornerRadius(30)
                            Text("Transportation")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all, 35.0/*@END_MENU_TOKEN@*/)
                }//closes navigation link
            } // closes the vstack
        } // closes the z stack
        
    }
}
#Preview {
    foodPage()
}
