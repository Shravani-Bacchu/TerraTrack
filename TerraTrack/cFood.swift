//
//  cFood.swift
//  TerraTrack
//
//  Created by Scholar on 14/08/2024.
//

import SwiftUI

struct cFood: View {
    var body: some View {
        
        Text("Sustainable Places To Get Food")
            .font(.title)
            .foregroundColor(Color("customBrown"))
            .padding(.top)
        
        ZStack{
            
            @State var inputtext: String = ""
            let arrayOfItems = ["Jikoni - Earned a climate neutral certificate.                                                                  Addrress: 19-21 Blandford St, London W1U 3DH", "Rucola at The Conduit - Works towards zero waste when creating dishes as well as offsetting carbon emissions.                                Address: 6 Langley St, Greater, London WC2H 9JA", "Palm Greens - Sources food locally and according to the season. Take away packaging is also compostable.                                         Address: 103-105 New Oxford St, London", "Mildreds Covent Garden - Plant based restaurant. Committed to reducing waste when creating dishes.                          Address: 79 St Martin's Ln, London, WC2N 4AA", "Frog by Adam Handling - Sources ingredients locally and seasonally. Dedicated to preserving food to reduce waste.                                                  Address: 34-35 Southampton St, London WC2E 7HG", "Adesse at Selfridges - Part of Project Earth which is providing more options for plant based dishes in restaurants.                          Address: 400 Oxford St, London W1A 1AB", "Silo London - Zero waste restaurant. Silo makes many of its own products. For example, they churn their own butter and have their very own flour mill.                                             Address: The white building, Unit 7 1st Floor, c/o CRATE Bar, Unit 7 Queen's Yard, London E9 5EN", "Mallow Borough Market - Plant based market with ingredients sourced from small businesses committed to sustainability.                                               Address: 1 Cathedral St, London SE1 9DE"]
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
    cFood()
}
