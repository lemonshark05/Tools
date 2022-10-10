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
        Form {
            Section {
                DatePicker("Please enter a date", selection: $rtime).labelsHidden()
            }
            Section {
                Text(Date.now.formatted(date: .long, time: .shortened))
            }
        }
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}
