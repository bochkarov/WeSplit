//
//  ContentView.swift
//  WeSplit
//
//  Created by Bochkarov Valentyn on 19.02.2021.
//

import SwiftUI

struct ContentView: View {
    @State var checkAmount = ""
    @State var numberOfPeople = 2
    @State var tipPercentage = 2
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        NavigationView {
        
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                Section(header: Text("How much tip do you want to leave?")) {
                   
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text(" \(self.tipPercentages[$0])%")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
            }
            .navigationBarTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
