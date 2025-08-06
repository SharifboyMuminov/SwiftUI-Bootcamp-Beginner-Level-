//
//  SheetsExampleView.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Muminov Sharifjon on 06/08/25.
//

import SwiftUI

struct SheetsExampleView: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.blue)
                    .frame(width: 200,height: 70)
                    .overlay {
                        Text("Button")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
            }.sheet(isPresented: $showSheet) {
                SeccondPage()
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                SeccondPage()
//            }

        }
    }
}


struct SeccondPage: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue
                    .dismiss()
            } label: {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.red)
                    .frame(width: 200,height: 70)
                    .overlay {
                        Text("Exit")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
            }

        }
    }
}

#Preview {
    SheetsExampleView()
}
