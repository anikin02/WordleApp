//
//  Words.swift
//  WordleApp
//
//  Created by anikin on 31.08.2024.
//

import Foundation

struct Words {
  let easyWords: [String] = [
    "apple",
    "table",
    "chair",
    "plant",
    "house",
    "water",
    "bread",
    "grape",
    "shoes",
    "fruit",
    "mouse",
    "clock",
    "paper",
    "phone",
    "light",
    "dream",
    "music",
    "train",
    "stone",
    "shirt",
    "beach",
    "jelly",
    "candy",
    "storm",
    "laugh",
    "brave",
    "field",
    "sugar",
    "cloud",
    "peace",
    "river",
    "night",
    "pizza",
    "horse",
    "glove",
    "brush",
    "yacht",
    "metal",
    "juice",
    "waves",
    "mango",
    "ocean",
    "spoon",
    "happy",
    "crane",
    "frost",
    "pilot",
    "house",
    "knife",
    "lemon",
    "flame"
  ]
  
  let middleWords: [String] = [
    "brave",
    "crisp",
    "doubt",
    "flame",
    "glint",
    "honor",
    "juice",
    "latch",
    "mirth",
    "nerdy",
    "plumb",
    "quilt",
    "rival",
    "sharp",
    "tiger",
    "vivid",
    "worry",
    "zebra",
    "swirl",
    "knack",
    "frost",
    "lunar",
    "swoop",
    "storm",
    "sleek",
    "mango",
    "pixel",
    "smile",
    "craft",
    "judge",
    "blaze",
    "trace",
    "spicy",
    "fable",
    "grape",
    "whale",
    "flute",
    "eagle",
    "motel",
    "spoon"
  ]
  
  let hardWords: [String] = [
    "abyss",
    "blimp",
    "crypt",
    "dizzy",
    "exult",
    "fluke",
    "gizmo",
    "humor",
    "jumpy",
    "kneel",
    "luxur",
    "macho",
    "nexus",
    "opium",
    "pique",
    "quail",
    "risky",
    "tango",
    "ultra",
    "vivid",
    "wharf",
    "xenon",
    "yacht",
    "zesty",
    "alpha",
    "blaze",
    "cynic",
    "drain",
    "eject",
    "focal",
    "grasp",
    "hover",
    "jolly",
    "knack",
    "livid",
    "moist",
    "noble",
    "orbit",
    "plumb",
    "quest",
    "regal",
    "skate",
    "tiger",
    "vowel"
  ]
  
  func getRandomWord(level: Level) -> String {
    switch level {
    case .easy:
      return easyWords.randomElement()!
    case .middle:
      return middleWords.randomElement()!
    case .hard:
      return hardWords.randomElement()!
    }
  }
}
