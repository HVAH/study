//
//  EmojiMemoryGame.swift
//  study
//
//  Created by hvah on 2020/11/24.
//  Copyright © 2020 hvah. All rights reserved.
//

import SwiftUI



class EmojiMemoryGame : ObservableObject{
    @Published private var model: MemoryGame<String> = createMemoryGmae()
        
    static func createMemoryGmae() -> MemoryGame<String> {
        let emojis = ["🤔","😁","😝", "👻"]
        
        return MemoryGame<String>(numberofPairsOfCards: 3) {pairIndex in return emojis[pairIndex]}
    }
    
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        //objectWillChange.send()
        model.choose(card: card)
    }
}
