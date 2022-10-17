//
//  BottomTabBar.swift
//  Tools
//
//  Created by lemonshark on 2022/10/16.
//

import SwiftUI

enum Tabs: Int {
    case chats = 0
    case back = 1
    case other = 2
}

struct BottomTabBar: View {
    
    @Binding var selectBar: Tabs
    
    var body: some View {
        HStack(alignment: .center) {
            Button {
                selectBar = .chats
            }label: {
                TabBarButton(buttonText: "Chats", imageName: "bubble.left", isActive: selectBar == .chats)
            }
            
            Button {
                
            }label: {
                VStack (alignment: .center, spacing: 4){
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                    Text("New").font(Font.title3)
                }
            }
            Button {
                selectBar = .back
            }label: {
                TabBarButton(buttonText: "Back", imageName: "person", isActive: selectBar == .back)
            }
        }
        .frame(height: 82)
    }
}

struct BottomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomTabBar(selectBar: .constant(.chats))
    }
}
