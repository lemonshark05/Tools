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
//        Button("Show Alert") {
//            showingAlert = true
//        }
//        .alert("Important message", isPresented: $showingAlert) {
//            Button("Delete", role: .destructive) {}
//            Button("Cancel", role: .cancel) {}
//        } message: {
//            Text("Please read this: ")
//        }
        RulerLines
        ScrollView {
            LazyVStack(spacing: 10) {
                
            }
        }
    }
    var RulerLines: some View {
        GeometryReader { geometry in
            Path { path in
                for index in 0...100 {
//                    var rlen:CGFloat = (((index)%10)==9)? 30:50
                    let rscale: CGFloat = CGFloat(index) * 8
                    path.move(to: CGPoint(x: 0, y: rscale))
                    path.addLine(to: CGPoint(x: 30, y: rscale))
                }
            }
            .stroke(Color.black, lineWidth: 1.5)
        }
    }
}

struct RulerView_Previews: PreviewProvider {
    static var previews: some View {
        RulerView()
    }
}
