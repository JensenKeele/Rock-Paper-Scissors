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
                Text("Rock Paper Scissors")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .bold()
                Text("Player 1 Turn")
                    .font(.title2)
                    .fontWeight(.heavy)
                HStack {
                    SelectionColumns(image: "rock", width: 110, height: 150)
                    SelectionColumns(image: "paper", width: 110, height: 150)
                    SelectionColumns(image: "scissor", width: 150, height: 100)
                }
            }
            NavigationLink("Directions", destination: InstructionsView())
        }
    }
    struct CustomText: View {
        let words: String
        var body: some View {
            Text("\(words)")
                .font(.default,)
                .fontWeight(.light)
        }
    }
    struct SelectionColumns: View {
        let image: String
        let width: Int
        let height: Int
        var body: some View {
            ZStack {
                
                Image("\(image)").resizable().frame(width: CGFloat(width), height: CGFloat(height)).foregroundColor(.clear)
                //ask mr.B about CGFloat
            }
            .frame(width: 100, height: 100)
        }
    }
    struct InstructionsView: View {
        var body: some View {
            VStack {
                Text("In Rock Paper Scissors, you compete against another person. Rock beats scissors, scissors beat paper, and paper beats rock.")
                Text("Player 1 will make your move first. You can choose to play Rock, Paper, or Scissors. After Player 1 decides their move, ")
            }
        }
    }
}
#Preview {
    ContentView()
}
