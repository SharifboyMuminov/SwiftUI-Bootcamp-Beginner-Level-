//
//  AnimationExample.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Muminov Sharifjon on 05/08/25.
//

import SwiftUI

struct AnimationExample: View {
    
    @State var isAnimtion: Bool = false
    
    var body: some View {
        VStack{
            Button("Click me") {
                
                isAnimtion.toggle()

                
            }.padding()
            Spacer()
            RoundedRectangle(cornerRadius: isAnimtion ? 50 : 20)
                .fill(isAnimtion ? .orange : .black)
                .frame(
                    width: isAnimtion ? 100 : 300,
                    height: isAnimtion ? 100 : 200
                )
                .offset(y:isAnimtion ? 100 : 0)
                .rotationEffect(.degrees(isAnimtion ? 360 : 0))
                .animation(.linear,value: isAnimtion)
            
            Spacer()
            RoundedRectangle(cornerRadius: 20)
                .fill(isAnimtion ? .orange : .black)
                .frame(
                    width: isAnimtion ? 100 : 340,
                    height: 160
                )
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.5,
//                    id: isAnimtion
                ),value: isAnimtion)
            Spacer()
        }
    }
}

#Preview {
    AnimationExample()
}
