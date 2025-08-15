//
//  PickerExampleView.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Muminov Sharifjon on 15/08/25.
//

import SwiftUI

struct PickerExampleView: View {
    @State var pickerSelectionValue: Int = 1
    
    var body: some View {
        
        VStack{
            Text("Active vale: \(pickerSelectionValue)")
                .font(.headline)
                .fontWeight(.bold)
            
            Picker(selection: $pickerSelectionValue) {
                ForEach(1...20, id: \.self) { digit in
                    Text("Hello, World! \(digit)").tag(digit)
                }
            } label: {
                Text("Digits")
            }
            .pickerStyle(WheelPickerStyle())
            
            Picker(selection: $pickerSelectionValue) {
                ForEach(1...3, id: \.self) { digit in
                    Text("\(digit)")
                }
            } label: {
                Text("Digits")
            }
            .pickerStyle(SegmentedPickerStyle())
        }


    }
}

#Preview {
    PickerExampleView()
}
