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
                    NavigationLink(destination: whatBuy2()) {
                        Text("North")
                            .font(.largeTitle)
                            .foregroundColor(Color.black)
                    }
                    HStack{
    
                        NavigationLink(destination: whatBuy2()) {
                            Text("West")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                        NavigationLink(destination: whatBuy2()) {
                            Text("Central")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                        NavigationLink(destination: whatBuy2()) {
                            Text("East")
                                .font(.largeTitle)
                                .foregroundColor(Color.black)
                        }
                    }
                    NavigationLink(destination: whatBuy2()) {
                        Text("South")
                            .font(.largeTitle)
                            .foregroundColor(Color.black)
                    }
                }
                .onAppear {
                                for family in UIFont.familyNames.sorted() {
                                  print("Family: \(family)")
                                  let names = UIFont.fontNames(forFamilyName: family)
                                  for fontName in names {
                                    print("- \(fontName)")
                                  }
                                }
                              }
            }
        }
    }
}
    #Preview {
        ContentView()
    }
