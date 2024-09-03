//
//  GameBoardView.swift
//  WordleApp
//
//  Created by anikin02 on 27.08.2024.
//

import SwiftUI

struct GameBoardView: View {
  let level: Level
  @ObservedObject var gameBoardModel: GameBoardModel
  
  init(level: Level) {
    self.level = level
    self.gameBoardModel = GameBoardModel(level: level)
  }
  
  var body: some View {
    VStack {
      Spacer()
      WordBoardView()
        .environmentObject(gameBoardModel)
      Spacer()
      KeyboardView()
        .environmentObject(gameBoardModel)
    }
    .alert(gameBoardModel.alertTitle, isPresented: $gameBoardModel.showAlert) {
      Button("Restart") {
        gameBoardModel.newGame()
      }
    } message: {
      Text(gameBoardModel.alertDescription)
    }
  }
}
