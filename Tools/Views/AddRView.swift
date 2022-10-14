//
//  AddRView.swift
//  Tools
//
//  Created by lemonshark on 2022/10/13.
//

import SwiftUI
import Charts

struct AddRView: View {
    @State private var statueSelect = "strong"
    @State private var rdata = Date.now
    @State private var note = ""
    @State private var predictData = Date.now
    
    let statue = ["strong", "energetic", "relax", "weak", "tired", "upset"]
    let data: [MountPot] = [
        MountPot(mount: "jan/22", value: 29),
        MountPot(mount: "feb/22", value: 34),
        MountPot(mount: "mar/22", value: 37),
        MountPot(mount: "apr/22", value: 42),
        MountPot(mount: "may/22", value: 33),
        MountPot(mount: "jun/22", value: 28),
        MountPot(mount: "jul/22", value: 27)
    ]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Statue", selection: $statueSelect) {
                        ForEach(statue, id: \.self) {
                            Text($0)
                        }
                    }
                    DatePicker("Date", selection: $rdata)
                    DatePicker("Finished Date", selection: $predictData)
                }
                Section {
                    Chart(data) {
                        LineMark(
                            x: .value("Mount", $0.mount),
                            y: .value("Value", $0.value)
                        )
                        PointMark(
                            x: .value("Mount", $0.mount),
                            y: .value("Value", $0.value)
                        )
                    }
                    .frame(height: 250)
                }
                Section {
                    Button {
                    } label: {
                      Text("Save Record")
                    }
        
                    Button(role: .destructive) {
                    } label: {
                      Text("Destructive")
                    }

                    Button(role: .cancel) {
                    } label: {
                      Text("Cancel")
                    }
                }
            }.navigationTitle("New Records")
        }
    }
}

struct AddRView_Previews: PreviewProvider {
    static var previews: some View {
        AddRView()
    }
}
