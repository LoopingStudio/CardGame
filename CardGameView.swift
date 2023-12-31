//
//  CardGameView.swift
//  CardGame
//
//  Created by Apprenant 53 on 19/06/2023.
//

import SwiftUI



struct CardGameView: View {
    
    @State var selectedSuit: String = "questionmark"

    var body: some View {
       
        VStack{
            HStack {
                SuitButton(suitImage: "suit.heart.fill", suitName: "Heart", suitColor: .red, sSuit: $selectedSuit)
                
                Spacer()
                
                SuitButton(suitImage: "suit.diamond.fill", suitName: "Diamond", suitColor: .red, sSuit: $selectedSuit)

            }
            .padding(24)
            
            
            Image(systemName: selectedSuit)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            HStack {
                SuitButton(suitImage: "suit.spade.fill", suitName: "Spade", suitColor: .black, sSuit: $selectedSuit)

                Spacer()
            
                SuitButton(suitImage: "suit.club.fill", suitName: "Club", suitColor: .black, sSuit: $selectedSuit)
            }
            .padding(24)
            
            SuitButton(suitImage: "suit.club.fill", suitName: "Club", suitColor: .black, sSuit: $selectedSuit)
        }
    }
}








struct CardGameView_Previews: PreviewProvider {
    static var previews: some View {
        CardGameView()
    }
}



struct SuitButton: View {
    var suitImage: String
    var suitName: String
    var suitColor: Color
    
    @Binding var sSuit: String
    
    var body: some View {
        VStack {
            Button{
                sSuit = suitImage
            } label: {
                Image(systemName: suitImage)
                    Text(suitName)
            }
            .buttonStyle(.borderedProminent)
        .tint(suitColor)
        }
        
    }
}
