//
//  MenuView.swift
//  WordleApp
//
//  Created by anikin02 on 31.08.2024.
//

import SwiftUI

struct MenuView: View {
  var body: some View {
    ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom)) {
      VStack {
        Text("Five Letters")
          .font(.system(size: 50, weight: .bold))
        VStack(spacing: 20) {
          ButtonMenuView(title: "Easy", level: .easy)
          ButtonMenuView(title: "Middle", level: .middle)
          ButtonMenuView(title: "Hard", level: .hard)
        }
      }
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
  }
}

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
