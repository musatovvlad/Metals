//
//  game.swift
//  Metals
//
//  Created by влад on 25.04.2022.
//





/// game model, the structure is connected to the view controller via the property (currentGame)
struct Game{
    /// guess word
    var word: String
    /// number of remaining attempts
    var inCorrectMovesRemaining: Int
}
