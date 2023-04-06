//
//  ContentView.swift
//  kulka
//
//  Created by Kacper Ołdziejewski on 05/04/2023.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        
        GeometryReader {geo in
            ZStack {
                ballView( position: CGPoint(x: 100, y: 200), direction: CGPoint(x: 4, y: 4), color: Color.green, duration: 0.1, size: geo.size, ballSize: 35)
                ballView(direction: CGPoint(x: 2, y: 2), color: Color.blue, duration: 0.1, size: geo.size, ballSize: 50)
                ballView(direction: CGPoint(x: 1, y: 1), color: Color.red, duration: 0.1, size: geo.size, ballSize: 75)
                ballView(direction: CGPoint(x: 8, y: 8), color: Color.teal, duration: 0.1, size: geo.size, ballSize: 20)
            }
        }

        }

}

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ContentView()
    }

}
