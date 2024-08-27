//
//  GameBoardView.swift
//  WordleApp
//
//  Created by anikin02 on 27.08.2024.
//

import SwiftUI

struct GameBoardView: View {
  var topRowLetters = "QWERTYUIOP".map{ String($0) }
  var middleRowLetters = "ASDFGHJKL".map{ String($0) }
  var bottonRowLetters = "ZXCVBNM".map{ String($0) }
  var body: some View {
    VStack {
      Spacer()
      HStack {
        ForEach(topRowLetters, id: \.self) { letter in
          LetterButtonView(letter: letter)
        }
      }
      HStack {
        ForEach(middleRowLetters, id: \.self) { letter in
          LetterButtonView(letter: letter)
        }
      }
      HStack {
        ForEach(bottonRowLetters, id: \.self) { letter in
          LetterButtonView(letter: letter)
        }
        Button {
          
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

#Preview {
  GameBoardView()
}
