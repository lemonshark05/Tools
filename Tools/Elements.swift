//
//  Elements.swift
//  Tools
//
//  Created by lemonshark on 2022/10/13.
//

import Foundation

struct ExpenseItem {
    let name: String
    let type: Int
    let health : String
}

struct recordData {
    var type : Int
    var rdata : Date
    var note : String
    var tatue : String
    var predictdata : Date
}

struct MountPot: Identifiable {
    var id = UUID()
    var mount: String
    var value: Double
}
