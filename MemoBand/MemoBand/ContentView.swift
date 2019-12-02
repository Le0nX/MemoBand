//
//  ContentView.swift
//  MemoBand
//
//  Created by Denis Nefedov on 02.12.2019.
//  Copyright © 2019 X. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isPresented: Bool = false // Creating a state
    
    var body: some View {
        TabView {
            Button(action: {
                print("hi")
            }){
                Text("First View")
            }.tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                }.tag(0)
            
            List {
              Text("Charmander")
              Text("Squirtle")
              Text("Bulbasaur")
              Text("Pikachu")
            }.tabItem {
                    Image(systemName: "2.circle")
                    Text("Second")
                }.tag(1)
            
            Button(action: { self.isPresented.toggle() }) { // Button to show the modal view by toggling the state
                Text("Show 🐢")
            }.sheet(isPresented: $isPresented) { // Passing the state to the sheet API
                Text("🐢")
            }.tabItem {
                Image(systemName: "3.circle")
                Text("Third")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
