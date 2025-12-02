//
//  Player2.swift
//  Rock Paper Scissors
//
//  Created by Jensen Keele on 11/20/25.
//

import SwiftUI

struct Player2: View {
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
                HStack (alignment: .center) {
                    NavigationLink("Rock", destination: GameResult())
                        .padding()
                    NavigationLink("Scissors", destination: GameResult())
                        .padding()
                    NavigationLink("Paper", destination: GameResult())
                        .padding()
                }
            }
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
    Player2()
}
