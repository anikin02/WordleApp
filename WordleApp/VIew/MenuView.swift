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
