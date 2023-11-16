//
//  ContentView.swift
//  EmojiLover
//
//  Created by Abrar Hamim on 15/11/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case heart = "❤️"
    case balloon = "🎈"
    case confetti = "🎉"
    case cake = "🎂"
    case sleep = "😴"
    case night = "😪"
}


struct ContentView: View {
   @State var selection: Emoji = .heart
    
    var body: some View {
        NavigationView{
            VStack{
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("select Emoji", selection: $selection){
                    ForEach(Emoji.allCases,id: \.self) { emoji in Text(emoji.rawValue)
                        
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Lover!")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
