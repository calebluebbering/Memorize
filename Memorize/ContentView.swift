//
//  ContentView.swift
//  Memorize
//
//  Created by Caleb Luebbering on 1/15/25.
//

import SwiftUI

struct ContentView: View {
    let emojis: [String] = ["🙈", "🍕", "🐱", "😈"]
    var body: some View {
        HStack {
            ForEach(emojis.indices, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
        
    }
}

struct CardView: View {
    let content: String
    @State var isFaceUp: Bool = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius: 12)
            if isFaceUp {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
            else {  //face down
                base.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
