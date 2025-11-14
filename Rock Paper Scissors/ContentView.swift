//
//  ContentView.swift
//  Rock Paper Scissors
//
//  Created by Jensen Keele on 11/12/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Rock Paper Scissors")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .bold()
        }
    }
}
struct SelectionColumns: View {
    let color: Color
    let image: String
    var body: some View {
        ZStack {
            Image("\(image)").resizable().frame(width: 100, height: 100).foregroundColor(.clear)
        }
        .frame(width: 100, height: 100)
    }
}
#Preview {
    ContentView()
}
