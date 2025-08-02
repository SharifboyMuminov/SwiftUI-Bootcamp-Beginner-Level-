//
//  LazyVGridExampleView.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Muminov Sharifjon on 02/08/25.
//

import SwiftUI

struct LazyVGridExampleView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    
    
    var body: some View {
        ScrollView{
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: nil,
                pinnedViews: [.sectionHeaders],
            ) {
                Section(
                    header: Text("Black")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue.ignoresSafeArea()),
                    
                ) {
                    ForEach(0..<10){ index in
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 140)
                    }
                }
                Spacer().frame(height: 20)
                Section(
                    header: Text("Red")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue),
                    
                ) {
                    ForEach(0..<10){ index in
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 140)
                            .foregroundStyle(Color.red)
                    }
                }
                Spacer().frame(height: 20)
                Section(
                    header: Text("Gray")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue),
                    
                ) {
                    ForEach(0..<10){ index in
                        RoundedRectangle(cornerRadius: 10)
                            .frame(height: 140)
                            .foregroundStyle(Color.gray)
                    }
                }
            }
        }
    }
}

#Preview {
    LazyVGridExampleView()
}
