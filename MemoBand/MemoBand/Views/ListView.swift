//
//  ContentView.swift
//  MemoBand
//
//  Created by Denis Nefedov on 02.12.2019.
//  Copyright © 2019 X. All rights reserved.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject var viewModel = UserViewModel()
    
    @State var isPresented: Bool = false // Creating a state
    
    var body: some View {
        TabView {
            Button(action: {}){
                Text("First View")
            }.tabItem {
                    Image(systemName: "1.circle")
                    Text("First")
                }.tag(0)
            NavigationView{
                VStack{
                    List {
                        ForEach(viewModel.users) { user in
                            NavigationLink(destination: UserView()) {
                                Text(user.name)
                            }
                            
                        }
                    }
                }
                .navigationBarHidden(false)
                .navigationBarTitle("Users")
            }.tabItem {
                Image(systemName: "2.circle")
                Text("Second")
            }.tag(1)
            
            
            Button(action: { self.isPresented.toggle() }) {
                Text("Show 🐢")
            }.sheet(isPresented: $isPresented) {
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
        ListView()
    }
}
