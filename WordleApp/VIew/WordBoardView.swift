//
//  WordBoardView.swift
//  WordleApp
//
//  Created by anikin02 on 27.08.2024.
//

import SwiftUI

struct WordBoardView: View {
  
  @EnvironmentObject var gameBoardModel: GameBoardModel
  
  var body: some View {
    VStack {
      HStack {
        LetterView(indexWord: 0, indexLetter: 0)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 0, indexLetter: 1)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 0, indexLetter: 2)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 0, indexLetter: 3)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 0, indexLetter: 4)
          .environmentObject(gameBoardModel)
      }
      HStack {
        LetterView(indexWord: 1, indexLetter: 0)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 1, indexLetter: 1)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 1, indexLetter: 2)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 1, indexLetter: 3)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 1, indexLetter: 4)
          .environmentObject(gameBoardModel)
      }
      HStack {
        LetterView(indexWord: 2, indexLetter: 0)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 2, indexLetter: 1)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 2, indexLetter: 2)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 2, indexLetter: 3)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 2, indexLetter: 4)
          .environmentObject(gameBoardModel)
      }
      HStack {
        LetterView(indexWord: 3, indexLetter: 0)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 3, indexLetter: 1)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 3, indexLetter: 2)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 3, indexLetter: 3)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 3, indexLetter: 4)
          .environmentObject(gameBoardModel)
      }
      HStack {
        LetterView(indexWord: 4, indexLetter: 0)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 4, indexLetter: 1)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 4, indexLetter: 2)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 4, indexLetter: 3)
          .environmentObject(gameBoardModel)
        LetterView(indexWord: 4, indexLetter: 4)
          .environmentObject(gameBoardModel)
      }
    }
  }
}
