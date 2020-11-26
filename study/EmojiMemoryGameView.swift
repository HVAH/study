//
//  EmojiMemoryGameView.swift
//  study
//
//  Created by hvah on 2020/11/23.
//  Copyright © 2020 hvah. All rights reserved.
//

import SwiftUI


struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
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
            
    }
}


struct CardeView: View {
    var card: MemoryGame<String>.Card
   
    var body: some View {
        GeometryReader{ geometry in
            body(geometry.size)
        }
       
    }
    
    func body(_ size: CGSize) -> some View {
        ZStack{
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: lineWidth)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: cornerRadius).fill()
            }
            
            
        }
        .font(Font.system(size: min(size.width, size.height) * fontScaleFactor))
    }
    
    let cornerRadius: CGFloat = 10.0
    let lineWidth: CGFloat = 3
    let fontScaleFactor: CGFloat = 0.75
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}
