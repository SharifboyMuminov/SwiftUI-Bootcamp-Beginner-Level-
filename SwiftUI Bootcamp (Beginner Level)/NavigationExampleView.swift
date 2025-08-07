//
//  NavigationExampleView.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Muminov Sharifjon on 07/08/25.
//

import SwiftUI

struct NavigationExampleView: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                
                Text("Hello, World!")
            }
            .navigationTitle("Hello")
            .navigationBarItems(trailing: NavigationLink(destination: AddPage()) {
                Image(systemName: "plus")
            })
                
            
        }
    }
}


struct AddPage: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
                .navigationBarHidden(true)
            
            Button("POP") {
                presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

#Preview {
    NavigationExampleView()
}
