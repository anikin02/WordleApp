//
//  LetterView.swift
//  WordleApp
//
//  Created by anikin02 on 27.08.2024.
//

import SwiftUI

struct LetterView: View {
  var indexWord: Int
  var indexLetter: Int
  
  @EnvironmentObject var gameBoardModel: GameBoardModel
  
  var body: some View {
    Text(gameBoardModel.getLetter(indexWord: indexWord, indexLetter: indexLetter))
      .font(.system(size: 50, weight: .bold))
      .foregroundStyle(.white)
      .frame(width: 65, height: 90)
      .background(Color(gameBoardModel.getNameColorPlate(indexWord: indexWord, indexLetter: indexLetter)))
      .clipShape(RoundedRectangle(cornerRadius: 5))
  }
}
