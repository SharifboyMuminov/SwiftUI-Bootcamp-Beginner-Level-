//
//  BackgroundAndOverlayExample.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Muminov Sharifjon on 23/07/25.
//

import SwiftUI

struct BackgroundAndOverlayExample: View {
    
    @State private var count: Int = 1

    var body: some View {
        Button(action: {
            count += 1
        }) {
            
            Image(systemName: "heart.fill")
                .foregroundStyle(.white)
                .font(.system(size: 50))
                .background(
                    Circle()
                        .fill(.red)
                        .frame(width: 120, height: 120)
                        .shadow(color: .red,radius: 10, x: 0, y: 10)
                        .overlay(
                            Circle()
                            .fill(.blue)
                            .frame(width: 40,height: 40)
                            .shadow(color: .red,radius: 10, x: 0, y: 0)
                            .overlay(
                                Text("\(count)")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 16))
                                    .fontWeight(.bold)
                                    ),
                            alignment: .bottomTrailing
                                
                        )
                )
        }
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .foregroundStyle(.white)
//            .background(
//                Circle()
//                    .foregroundColor(Color.blue)
//                    .frame(width: 100,height: 100)
//            )
//            .frame(width: 130, height: 130)
//            .background(
//                Circle()
//                    .fill(LinearGradient(colors: [.blue,.red], startPoint: .leading, endPoint: .trailing))
//            )
    }
}

#Preview {
    BackgroundAndOverlayExample()
}
