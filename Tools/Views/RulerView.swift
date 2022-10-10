//
//  RulerView.swift
//  Tools
//
//  Created by lemonshark on 2022/10/9.
//

import SwiftUI

struct RulerView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert) {
            Button("Delete", role: .destructive) {}
            Button("Cancel", role: .cancel) {}
        } message: {
            Text("Please read this: ")
        }
    }
}

struct RulerView_Previews: PreviewProvider {
    static var previews: some View {
        RulerView()
    }
}
