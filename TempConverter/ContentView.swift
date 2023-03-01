//
//  ContentView.swift
//  TempConverter
//
//  Created by Ryan DeVault on 3/1/23.
//

import SwiftUI

struct ContentView: View {
    var tempTypes = ["°C", "°F", "K"]
    @State var inputTempValue = 212.00
    @State var outputTempValue = 100.00
    @State var inputTempType = "°F"
    @State var outputTempType = "°C"
    var body: some View {
        Form{
            VStack {
                Text("Convert Temperature")
                HStack {
                    TextField("Value", value: $inputTempValue, format: .number)
                        .frame(width: 30)
                    Picker("", selection: $inputTempType){
                        ForEach(tempTypes, id: \.self){
                            temp in Text(temp)
                        }
                    }.frame(width: 1)
                    Spacer(minLength: 30)
                    Text("to").frame(width: 30)
                    Spacer()
                    Picker("", selection: $outputTempType){
                        ForEach(tempTypes, id: \.self){
                            temp in Text(temp)
                        }
                    }.frame(width:1)
                }
                
                Spacer()
//                Text("\(inputTempValue)\(inputTempType) is \(outputTempValue)\(outputTempType)")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
