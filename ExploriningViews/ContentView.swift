//
//  ContentView.swift
//  ExploriningViews
//
//  Created by administrator on 09/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStackDemo()
        }
    }
}

struct HStackDemo: View {
    var body: some View {
        HStack() {
             Image(systemName: "globe")
                 .imageScale(.large)
                 .foregroundStyle(.tint)
                 .padding()
                 .background(Color.green.opacity(0.30))
                 .cornerRadius(10)
                 .rotationEffect(Angle(degrees: 45))
             Text("Hello, world!")
                 .font(.title)
                 .padding()
                 .background(Color.red)
                 .cornerRadius(10)
                 .rotation3DEffect(
                     Angle(degrees: 30),
                     axis: (x: 1, y: 1.0, z: 0)
                 )
             Text("Hello, world!")
                 .font(.title)
                 .padding()
                 .background(Color.blue.opacity(0.30))
                 .cornerRadius(10)

         }
         .padding()
    }
}

#Preview {
    ContentView()
}
