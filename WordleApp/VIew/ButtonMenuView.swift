//
//  ButtonMenuView.swift
//  WordleApp
//
//  Created by anikin02 on 03.09.2024.
//

import SwiftUI

struct ButtonMenuView: View {
  let title: String
  let level: Level
  var body: some View {
    NavigationLink(destination: GameBoardView(level: level)) {
      Text(title)
        .font(.system(size: 40, weight: .bold))
        .foregroundStyle(.white)
        .frame(maxWidth: .infinity)
        .padding(15)
        .background(getColorBG())
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal, 30)
    }
  }
  
  func getColorBG() -> Color {
    switch level {
    case .easy:
      return .green
    case .middle:
      return .orange
    case .hard:
      return .red
    }
  }
}
