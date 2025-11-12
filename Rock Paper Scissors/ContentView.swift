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
    let image: Image
    var body: some View {
        ZStack {
            Image ("\(image)")
        }
    }
}
#Preview {
    ContentView()
}
