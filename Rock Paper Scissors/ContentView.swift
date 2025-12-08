//
//  ContentView.swift
//  Rock Paper Scissors
//
//  Created by Jensen Keele on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                customText(words: "Rock Paper Scissors")
                Text("Player 1 Turn")
                    .font(.title2)
                    .fontWeight(.heavy)
                HStack {
                    imageColumns(image: "rock", width: 110, height: 150)
                    imageColumns(image: "scissor", width: 150, height: 100)
                    imageColumns(image: "paper", width: 110, height: 150)
                }
                HStack (alignment: .center){
                    NavigationLink("Rock", destination: Player2(Player1: 0))
                        .padding()
                    NavigationLink("Scissors", destination: Player2(Player1: 2))
                        .padding()
                    NavigationLink("Paper", destination: Player2(Player1: 1))
                        .padding()
                }
                NavigationLink("Directions", destination: instructionsView())
                    .font(.headline)
                    .padding()
            }
        }
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
    struct instructionsView: View {
        var body: some View {
            customText(words: "How to Play")
                .padding()
            VStack (alignment: .leading){
                Text("In Rock Paper Scissors, you compete against another person.")
                    .padding()
                Text("Rock beats scissors, scissors beat paper, and paper beats rock.")
                    .padding()
                Text("Player 1 will make their move first. They can choose to play rock, paper, or scissors.")
                    .padding()
                Text("After Player 1 decides, pass the phone to Player 2.")
                    .padding()
                Text("Player 2 will then decide their move, and press (placeholder) to decide the winner.")
                    .padding()
            }
        }
    }
}
#Preview {
    ContentView()
}
