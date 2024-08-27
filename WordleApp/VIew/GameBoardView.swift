//
//  GameBoardView.swift
//  WordleApp
//
//  Created by anikin02 on 27.08.2024.
//

import SwiftUI

struct GameBoardView: View {
  @ObservedObject var gameBoardModel = GameBoardModel()
  
  var body: some View {
    VStack {
      Spacer()
      WordBoardView()
        .environmentObject(gameBoardModel)
      Spacer()
      KeyboardView()
        .environmentObject(gameBoardModel)
    }
  }
}

#Preview {
  GameBoardView()
}
