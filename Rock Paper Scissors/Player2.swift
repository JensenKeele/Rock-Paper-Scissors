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
    @State private var result = ""
    var body: some View {
        NavigationView {
            VStack{
                CustomText(words: "Rock Paper Scissors")
                Text("Player 2 Turn")
                    .font(.title2)
                    .fontWeight(.heavy)
                HStack {
                    ImageColumns(image: "rock", width: 110, height: 150)
                    ImageColumns(image: "scissor", width: 150, height: 100)
                    ImageColumns(image: "paper", width: 110, height: 150)
                }
                HStack {
                    Button("Rock") {
                        Player2 = 0
                        result = gameResult(Player1: Player1, Player2: Player2)
                        //how can i make the alert show the result of the gameResults function?
                    }
                    .padding()
                    Button("Scissors") {
                        Player2 = 2
                        result = gameResult(Player1: Player1, Player2: Player2)
                    }
                    .padding()
                    Button("Paper") {
                        Player2 = 1
                        result = gameResult(Player1: Player1, Player2: Player2)
                    }
                    .padding()
                }
                NavigationLink("Reset", destination: ContentView())
                .alert(isPresented: $GameOver, content: {
                    Alert(title: Text("\(result)"), dismissButton:
                            //how can i make the alert show the result of the gameResults function?
                            .destructive(Text("Rematch?"), action: {
                            }))
                })
            }
        }
    }
    func gameResult (Player1: Int, Player2: Int) -> String {
        if Player1 == Player2 {
            GameOver = true
            return "It's a draw!"
        }
        if (Player1 - Player2 + 3) % 3 == 1 {
            GameOver = true
            return "Player 1 wins!"
            //what is a formula that would decide a winner in rock paper scissors if Rock = 0, Paper = 1, Scissors = 2
        }
        else {
            GameOver = true
            return "Player 2 wins!"
        }
    }
}

struct CustomText: View {
    let words: String
    var body: some View {
        Text("\(words)")
            .font(.largeTitle)
            .fontWeight(.heavy)
            .bold()
    }
}

struct ImageColumns: View {
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
