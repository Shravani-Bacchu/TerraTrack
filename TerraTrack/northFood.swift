//
//  northFood.swift
//  TerraTrack
//
//  Created by Scholar on 14/08/2024.
//

import SwiftUI

struct northFood: View {
    var body: some View {
        Text("Sustainable Places To Get Food")
            .font(.title)
            .foregroundColor(Color("customBrown"))
            .padding(.top)
        
        ZStack{
            
            @State var inputtext: String = ""
            let arrayOfItems = ["Plants of Roselyn - Traditional Thai cookery incorporates plenty of plant-based dishes that we enjoy daily at home.                                                                  Addrress: 102 Tooley St, London SE1 2TH", "Miranda Café - Cafe that focuses on organic and sustainable food.                                Address: 28 Broadway Parade, London N8 9DB", "Jam Delish Islington - Vegan Carribean restaurant located in the heart of Angel, London.                                              Address: Islington, 1 Tolpuddle St, London N1 0XT", "Acme Fire Cult - The menu focuses on organic and heirloom ingredients sourced micro-seasonally, across the UK. At least 50% of the menu is plant-based.                                                Address: The Bootyard, Abbot St, London E8 3DP", "Barge East - Ingredients sourced from our gardens and sustainable suppliers.                                          Address:  River Lee, Sweetwater Mooring, White Post Ln, London E9 5EN", "EDIT - Ingredients are selected from small-scale farms, foragers and independent producers who use regenerative and minimal intervention methods.                                               Address: Hackney, 217 Mare Street, E8 3QE", "Zero Zero Restaurants - Zero waste Italian restaurant.                                        Address: 2nd Floor, O2 Centre, 255 Finchley Rd, London NW3 6LU", "Casa Fofó - Set menu featuring seasonal ingredients sourced by local producers and suppliers.                                            Address: 158 Sandringham Rd, London E8 2HS"]
            ScrollViewReader { proxy in
                VStack {
                    
                    List(0...7, id: \.self) { i in
                        Text(arrayOfItems[i])
                        .id(i)}
                    
                    HStack {
                        TextField("Jump to", text: $inputtext)
                            .padding(.leading, 20)
                        Button("Jump") {
                            proxy.scrollTo(20)
                        }
                        .padding(20)
                    }
                    
                    
        }
            
          
                }
                
                
            }
        }
    }

#Preview {
    northFood()
}
