//
//  KeyboardView.swift
//  WordleApp
//
//  Created by anikin02 on 27.08.2024.
//

import SwiftUI

struct KeyboardView: View {
  var topRowLetters = "QWERTYUIOP".map{ String($0) }
  var middleRowLetters = "ASDFGHJKL".map{ String($0) }
  var bottonRowLetters = "ZXCVBNM".map{ String($0) }
  
  @EnvironmentObject var gameBoardModel: GameBoardModel
  
  var body: some View {
    VStack {
      HStack {
        ForEach(topRowLetters, id: \.self) { letter in
          LetterButtonView(letter: letter)
            .environmentObject(gameBoardModel)
        }
      }
      HStack {
        ForEach(middleRowLetters, id: \.self) { letter in
          LetterButtonView(letter: letter)
            .environmentObject(gameBoardModel)
        }
      }
      HStack {
        ForEach(bottonRowLetters, id: \.self) { letter in
          LetterButtonView(letter: letter)
            .environmentObject(gameBoardModel)
        }
        Button {
          gameBoardModel.deleteLastLetter()
        } label: {
          Image(systemName: "delete.left")
            .font(.system(size: 20, weight: .bold))
            .foregroundStyle(.white)
        }
        .frame(width: 40, height: 40)
        .background(.gray)
        .clipShape(RoundedRectangle(cornerRadius: 5))
      }
      
      HStack {
        Button {
          gameBoardModel.nextEnterWord()
        } label: {
          Text("Enter word")
            .font(.system(size: 20, weight: .bold))
            .foregroundStyle(.white)
        }
        .frame(width: 150, height: 40)
        .background(.gray)
        .clipShape(RoundedRectangle(cornerRadius: 5))
      }
    }
  }
}
