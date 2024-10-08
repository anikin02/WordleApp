//
//  GameBoardModel.swift
//  WordleApp
//
//  Created by anikin02 on 27.08.2024.
//

import Foundation

class GameBoardModel: ObservableObject {
  let level: Level
  @Published var boardWords: [[Letter]] = [[]]
  @Published var showAlert = false
  var alertTitle = "You are win!"
  var alertDescription = ""
  
  var stateGame: StateGame = .playing
  
  let words = Words()
  var correctWord: String
  
  init(level: Level) {
    self.level = level
    correctWord = words.getRandomWord(level: level).uppercased()
    print(correctWord)
  }
  
  private var wordCounter = 0
  
  func enterLetter(letter: String) {
    guard boardWords[wordCounter].count < 5 else {
      return
    }
    
    boardWords[wordCounter].append(Letter(letter: letter))
  }
  
  func deleteLastLetter() {
    guard !boardWords[wordCounter].isEmpty else {
      return
    }
    
    boardWords[wordCounter].removeLast()
  }
  
  func nextEnterWord() {
    guard wordCounter < 4 else {
      stateGame = .lose
      checkWord()
      setAlert()
      return
    }
    
    if boardWords[wordCounter].count == 5 {
      checkWord()
      setAlert()
      wordCounter += 1
      boardWords.append([])
    } else {
      return
    }
  }
  
  func checkWord() {
    var inputWord = ""
    for letter in boardWords[wordCounter] {
      inputWord += letter.letter
    }
    if inputWord == correctWord {
      stateGame = .win
    }
    
    for (index, char) in correctWord.enumerated() {
      if index < boardWords[wordCounter].count {
        if String(char) == boardWords[wordCounter][index].letter {
          boardWords[wordCounter][index].colorName = "appGreen"
        } else if correctWord.contains(boardWords[wordCounter][index].letter) {
          boardWords[wordCounter][index].colorName = "appOrange"
        }
      }
    }
    
  }
  
  func getLetter(indexWord: Int, indexLetter: Int) -> String {
    if indexWord < boardWords.count && indexLetter < boardWords[indexWord].count {
      return boardWords[indexWord][indexLetter].letter
    } else {
      return ""
    }
  }
  
  func getNameColorPlate(indexWord: Int, indexLetter: Int) -> String {
    if indexWord < boardWords.count && indexLetter < boardWords[indexWord].count {
      return boardWords[indexWord][indexLetter].colorName
    } else {
      return "appGray"
    }
  }
  
  func setAlert() {
    if stateGame == .win {
      alertTitle = "You have WON!"
      showAlert = true
    } else if stateGame == .lose {
      alertTitle = "You have lost!"
      showAlert = true
    }
    
    alertDescription = "Correct word: \(correctWord)"
  }
  
  func newGame() {
    correctWord = words.getRandomWord(level: level).uppercased()
    boardWords = [[]]
    wordCounter = 0
    showAlert = false
    stateGame = .playing
  }
}

enum StateGame {
  case playing
  case win
  case lose
}
