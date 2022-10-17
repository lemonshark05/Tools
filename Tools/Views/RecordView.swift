//
//  RecordView.swift
//  Tools
//
//  Created by lemonshark on 2022/10/9.
//

import SwiftUI

struct RecordView: View {
    @State private var rtime = Date.now
    
    var body: some View {
        VStack {
            Text("Your Records").bold()
            //            Section {
            //                DatePicker("Please enter a date", selection: $rtime).labelsHidden()
            //            }
            
            Text(Date.now.formatted(date: .long, time: .shortened))
            ZStack {
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 0.0), endAngle: Angle(degrees: 190), clockwise: true)
                }
                .fill(Color(.systemYellow))
                
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 190), endAngle: Angle(degrees: 110), clockwise: true)
                }
                .fill(Color(.systemTeal))
                
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 110), endAngle: Angle(degrees: 90), clockwise: true)
                }
                .fill(Color(.systemBlue))
                
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 90.0), endAngle: Angle(degrees: 360), clockwise: true)
                }
                .fill(Color(.systemPurple))
                .offset(x: 20, y: 20)
                
                Path { path in
                    path.move(to: CGPoint(x: 187, y: 187))
                    path.addArc(center: .init(x: 187, y: 187), radius: 150, startAngle: Angle(degrees: 90.0), endAngle: Angle(degrees: 360), clockwise: true)
                    path.closeSubpath()
                }
                .stroke(Color(red: 52/255, green: 52/255, blue: 122/255), lineWidth: 3)
                .offset(x: 20, y: 20)
                .overlay(
                    Text("25%")
                        .font(.system(.largeTitle, design: .rounded))
                        .bold()
                        .foregroundColor(.white)
                        .offset(x: 80, y: -100)
                )
            }
            BottomTabBar(selectBar:.constant(.chats))
        }
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}
