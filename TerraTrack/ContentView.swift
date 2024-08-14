//
//  ContentView.swift
// homepage
//  TerraTrack
//
//  Created by Scholar on 12/08/2024.
//

import SwiftUI
struct ContentView: View {
    var body: some View {
        ZStack{
            
            VStack {
                Text("TerraTrack")
                    .font(.custom("DynamoW04-BoldCondensed", size: 70))
                    .foregroundColor(Color.customGreen)
                
                Text("Select your region")
                    .font(.title2)
                    .fontWeight(.bold)

                NavigationStack{
                    ZStack{
                        Image("londonMap")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .padding(/*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                        VStack{
                            NavigationLink(destination: whatBuyN()) {
                                Text("North")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                            }
                            .padding(/*@START_MENU_TOKEN@*/[.top, .trailing], 70.0/*@END_MENU_TOKEN@*/)
                            HStack{
        
                                NavigationLink(destination: whatBuyW()) {
                                    Text("West")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                }
                                .padding(/*@START_MENU_TOKEN@*/.horizontal, 15.0/*@END_MENU_TOKEN@*/)


                                NavigationLink(destination: whatBuyC()) {
                                    Text("Centr.")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                }
                                .padding(/*@START_MENU_TOKEN@*/[.top, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                                NavigationLink(destination: whatBuyE()) {
                                    Text("East")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.black)
                                }
                               // .padding(/*@START_MENU_TOKEN@*/.horizontal, 30.0/*@END_MENU_TOKEN@*/)
                            }
                            .padding(/*@START_MENU_TOKEN@*/[.bottom, .trailing], 45.0/*@END_MENU_TOKEN@*/)
                            NavigationLink(destination: whatBuyS()) {
                                Text("South")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color.black)
                                    .padding(.bottom, 110.0)
                            }
                        }// closes vstack
                        
                       
                    } //closes zstack
                   
                } //closes navigation stack
                .onAppear {
                                for family in UIFont.familyNames.sorted() {
                                  print("Family: \(family)")
                                  let names = UIFont.fontNames(forFamilyName: family)
                                  for fontName in names {
                                    print("- \(fontName)")
                                  }
                                }
                    
                              }
               
            }//closes z stack
        }
    }
}
    #Preview {
        ContentView()
    }
