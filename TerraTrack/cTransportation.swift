//
//  cTransportation.swift
//  TerraTrack
//
//  Created by Scholar on 14/08/2024.
//

import SwiftUI

struct cTransportation: View {
        let sustainableInfo = [
            "London's congestion charge is a  measure aimed at reducing traffic congestion and encouraging the use of sustainable transport alternatives."
        ]
        let tubeInfo = [
            "You can use a debit or a credit card to tap in and out, as well as an Oyster card.",
            "Some notable stations in Central London are Paddington, King's Cross - St Pancras, and Victoria."
        ]
        
        let cycleInfo = [
            "There are many opportunities to hire bikes in central London.",
            "Santander bikes and Lime bikes are potential ways to hire a bike.",
            "There are around 12,500 bikes in London, and over 800 docking stations."
        ]
        
        let busInfo = [
            "London buses are cashless, so you need an Oyster card, Travelcard.",
            "You can transfer to other buses or trams for free an unlimited number of times within one hour of touching in for your first journey.",
            "Night buses run overnight between the close of the Tube network and the start of daytime bus services."
        ]
        
        var body: some View {
            ZStack {
                Color(.customLightGreen)
                    .ignoresSafeArea()
                VStack(alignment: .leading, spacing: 10) {
                    
                    Text("Transportation Methods")
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 25.0)
                    
                    Text("Tips and Tricks to travel more sustainably")
                        .font(.title3)
                        .padding(.bottom, 10)
                    
                    Text("Tube")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    ForEach(tubeInfo, id: \.self) { info in
                        HStack {
                            Text("•")
                            Text(info)
                        }
                    }
                    
                    Text("Cycle")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.top, 10)
                    
                    ForEach(cycleInfo, id: \.self) { info in
                        HStack {
                            Text("•")
                            Text(info)
                        }
                    }
                    
                    Text("Buses")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.top, 10)
                    
                    ForEach(busInfo, id: \.self) { info in
                        HStack {
                            Text("•")
                            Text(info)
                        }
                    }
                    
                }
                .padding()
            }
        }
    }

#Preview {
    cTransportation()
}
