//
//  ViewController.swift
//  Metals
//
//  Created by влад on 24.04.2022.
//

import UIKit



class ViewController: UIViewController {
     
    // MARC: IB - Outlet
    @IBOutlet weak var lampsImageView: UIImageView!
    @IBOutlet var letterButtons: [UIButton]!
    @IBOutlet weak var corectWordLabel: UILabel!
    @IBOutlet weak var statusGameLabel: UILabel!
    
    
    //MARK: - properties
    var currentGame: Game!
    /// allowed number of button presses, matches the number of pictures (разрешенное количество нажатий кнопок, соответствует количеству изображений)
    let inCorrectMovesAllowed = 7
    /// list of words (names of metals) for guessing (список слов (названий металлов) для отгадывания)
    let listOfWords = [
        "Алюминий",
        "Барий",
        "Бериллий",
        "Ванадий",
        "Висмут",
        "Вольфрам",
        "Галий",
        "Гафний",
        "Германий",
        "Железо",
        "Золото",
        "Индий",
        "Иридий",
        "Кадмий",
        "Калий",
        "Кальций",
        "Кобальт",
        "Литий",
        "Магний",
        "Марганец",
        "Медь",
        "Натрий",
        "Никель",
        "Ниобий",
        "Олово",
        "Осмий",
        "Палладий",
        "Платина",
        "Рений",
        "Родий",
        "Ртуть",
        "Рубидий",
        "Рутений",
        "Свинец",
        "Серебро",
        "Стронций",
        "Сурьма",
        "Талий",
        "Тантал",
        "Титан",
        "Уран",
        "Хром",
        "Цинк",
        "Цирконий",
    ]
    
    /// win counter
    let totalsWins = 0
    
    /// loss counter
    let totallosses = 0
    
    //MARK:  - Methods
    func newRound(){
        let newWord = listOfWords.randomElement()
        currentGame = Game(word: newWord!, inCorrectMovesRemaining: inCorrectMovesAllowed)
        updateUi()
    }
    
    /// updating ImageView with button click (обновление ImageView с нажатием кнопки )
    func updateUi(){
        let movesRemaining = currentGame.inCorrectMovesRemaining
        let image = "lamp\(movesRemaining < 8 ? movesRemaining: 7)"
        lampsImageView.image = UIImage(named: image)
         
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }
// MARK: IB - Action
    
    @IBAction func letterButtonsPressed(_ sender: UIButton) {
        sender.isEnabled = false
    }
    
}

