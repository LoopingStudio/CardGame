//
//  ContentView.swift
//  CardGame
//
//  Created by Adeline Susset on 19/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var cardIcon : String = "questionmark.app.fill"
    @State var cardColor : Color = .green
    
    
    var body: some View {
        
        
        
        VStack {
            
            HStack {
                
                ButtonCardView(buttonIcon: "suit.spade.fill", buttonColor: .black, buttonText: "Piques", cardIcon: $cardIcon, cardColor: $cardColor)
                
                Spacer()
                
                ButtonCardView(buttonIcon: "suit.club.fill", buttonColor: .black, buttonText: "Trefles", cardIcon: $cardIcon, cardColor: $cardColor)
                
                
            } // end hstack
            
            
            Image(systemName: cardIcon)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .foregroundColor(cardColor)
            
            
            HStack {
                
                ButtonCardView(buttonIcon: "suit.heart.fill", buttonColor: .red, buttonText: "Coeur", cardIcon: $cardIcon, cardColor: $cardColor)
                
                Spacer()
                
                ButtonCardView(buttonIcon: "suit.diamond.fill", buttonColor: .red, buttonText: "Carreaux", cardIcon: $cardIcon, cardColor: $cardColor)

                
                
            }
                
            
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ButtonCardView: View {
    
    let buttonIcon : String
    let buttonColor : Color
    let buttonText : String
    
    @Binding var cardIcon : String
    @Binding var cardColor : Color
    
    var body: some View {
        
        Button {
            cardIcon = buttonIcon
            cardColor = buttonColor
        } label: {
            Image(systemName: buttonIcon)
            Text(buttonText)
        }
        .buttonStyle(.borderedProminent)
        .tint(buttonColor)
        .padding()
        
    }
}
