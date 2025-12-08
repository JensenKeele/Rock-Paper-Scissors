//
//  Player2.swift
//  Rock Paper Scissors
//
//  Created by Jensen Keele on 11/20/25.
//

import SwiftUI

struct Player2: View {
    let Player1: Int
    @State private var GameOver = false
    @State private var Player2 = 0
    var body: some View {
        NavigationView {
            VStack{
                customText(words: "Rock Paper Scissors")
                Text("Player 2 Turn")
                    .font(.title2)
                    .fontWeight(.heavy)
                HStack {
                    imageColumns(image: "rock", width: 110, height: 150)
                    imageColumns(image: "scissor", width: 150, height: 100)
                    imageColumns(image: "paper", width: 110, height: 150)
                }
                HStack {
                    
                }
                .alert(isPresented: $GameOver, content: {
                    Alert(title: Text("You won!"), dismissButton:
                            .destructive(Text("Play again?"), action: {
                            }))
                })
            }
        }
    }
    func gameResult (Player1: Int, Player2: Int) -> String {
        if Player1 == Player2 {
            return "It's a draw!"
        }
        if (Player1 - Player2 + 3) % 3 == 1 {
            return "Player 1 wins"
            //what is a formula that would decide a winner in rock paper scissors if Rock = 0, Paper = 1, Scissors = 2
        }
        else {
            return "Player 2 wins"
        }
    }
}
struct button: View {
    
}
struct customText: View {
    let words: String
    var body: some View {
        Text("\(words)")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .bold()
    }
}

struct imageColumns: View {
    let image: String
    let width: Int
    let height: Int
    var body: some View {
        ZStack {
            Image("\(image)")
                .resizable()
                .frame(width: CGFloat(width), height: CGFloat(height))
            //how can I put in integers for the width and height
        }
        .frame(width: 100, height: 100)
    }
}

#Preview {
    Player2(Player1: 0)
}
