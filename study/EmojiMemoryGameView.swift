//
//  ContentView.swift
//  study
//
//  Created by hvah on 2020/11/23.
//  Copyright © 2020 hvah. All rights reserved.
//

import SwiftUI


struct EmojiMemoryGameView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        
        return HStack{
            ForEach(viewModel.cards) { card in
                CardeView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
        
            }
            
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}


struct CardeView: View {
    var card: MemoryGame<String>.Card
   
    var body: some View {
        ZStack{
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
            
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
