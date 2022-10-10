//
//  FeeView.swift
//  Tools
//
//  Created by lemonshark on 2022/10/9.
//

import SwiftUI

struct FeeView: View {
    @State private var rtime = Date.now
    @State private var checkAmount = 0.0
    @State private var numofPeople = 2
    @State private var tipPercentage = 20
    @FocusState private var amountIsFocus:Bool
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numofPeople+2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount/100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal/peopleCount
        return amountPerPerson
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD")).keyboardType(.decimalPad)
                    Picker("Number of people", selection: $numofPeople) {
                        ForEach(2..<30) {
                            Text("\($0) people")
                        }
                    }
                }
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id:\.self) {
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                } header: {
                    Text("How much tip do you want to leave? ").bold()
                }
                Section {
                    Text(totalPerPerson, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                }
                Section {
                    DatePicker("Please enter a date", selection: $rtime).labelsHidden()
                }
                Section {
                    Text(Date.now.formatted(date: .long, time: .shortened))
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        amountIsFocus = false
                    }
                }
            }
        }
    }
}

struct FeeView_Previews: PreviewProvider {
    static var previews: some View {
        FeeView()
    }
}

