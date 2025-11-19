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
                CustomText(words: "Rock Paper Scissors")
                Text("Player 1 Turn")
                    .font(.title2)
                    .fontWeight(.heavy)
                HStack {
                    SelectionColumns(image: "rock", width: 110, height: 150)
                    SelectionColumns(image: "paper", width: 110, height: 150)
                    SelectionColumns(image: "scissor", width: 150, height: 100)
                }
                NavigationLink("Directions", destination: InstructionsView())
                    .font(.headline)
                    .padding()
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
    struct SelectionColumns: View {
        let image: String
        let width: Int
        let height: Int
        var body: some View {
            ZStack {
                Image("\(image)").resizable().frame(width: CGFloat(width), height: CGFloat(height)).foregroundColor(.clear)
                //how can I put in integers for the width and height
            }
            .frame(width: 100, height: 100)
        }
    }
    struct InstructionsView: View {
        var body: some View {
            VStack (alignment: .leading){
                Text("In Rock Paper Scissors, you compete against another person.")
                    .padding()
                Text("Rock beats scissors, scissors beat paper, and paper beats rock.")
                    .padding()
                Text("Player 1 will make your move first. You can choose to play Rock, Paper, or Scissors.")
                    .padding()
                Text("After Player 1 decides, press (placeholder) and pass the phone to Player 2.")
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
