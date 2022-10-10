//
//  ContentView.swift
//  Tools
//
//  Created by lemonshark on 2022/10/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section{
                    Text("Fee")
                    .padding()
                    Text("Ruler")
                    .padding()
                    Text("Period Records")
                    .padding()
                    Text("Health Records")
                    .padding()
                }
                Section("All Tools") {
                    Text("Setting")
                    .padding()
                }
            }
            .navigationTitle("Tools")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
