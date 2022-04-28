//
//  game.swift
//  Metals
//
//  Created by влад on 25.04.2022.
//





/// game model, the structure is connected to the view controller via the property (currentGame) (игровая модель, структура подключается к контроллеру представления через свойство (currentGame))
struct Game{
    /// guess word
    var word: String
    /// number of remaining attempts
    var inCorrectMovesRemaining: Int
    /// letters guessed by the user ( буквы угаданные пользователем)
   fileprivate var guessedLetter: [Character] = []
 
    init (word:String, inCorrectMovesRemaining: Int){
         self.word = word
        self.inCorrectMovesRemaining = inCorrectMovesRemaining
    }
/// computed property - calculated on every call.
    var guessedWord: String{
        var wordToShow = ""
        for letter in word{
            if guessedLetter.contains(Character(letter.lowercased()) ){
                wordToShow += String(letter)
            }else{
                wordToShow += "_"
            }
        }
        return wordToShow
    }
    
    mutating func playerGuessed (letter: Character){
        let lowercasedletter = Character(letter.lowercased())
        guessedLetter.append(lowercasedletter)
        if !word.lowercased().contains(lowercasedletter){
            inCorrectMovesRemaining -= 1
        }
        
    }
}
