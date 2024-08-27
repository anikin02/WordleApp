//
//  LetterButtonView.swift
//  WordleApp
//
//  Created by anikin02 on 27.08.2024.
//

import SwiftUI

struct LetterButtonView: View {
  let letter: String
  
  @EnvironmentObject var gameBoardModel: GameBoardModel
  
  var body: some View {
    Button {
      gameBoardModel.enterLetter(letter: letter)
    } label: {
      Text(letter)
        .font(.system(size: 20, weight: .bold))
        .foregroundStyle(.white)
    }
    .frame(width: 30, height: 40)
    .background(.gray)
    .clipShape(RoundedRectangle(cornerRadius: 5))
  }
}
