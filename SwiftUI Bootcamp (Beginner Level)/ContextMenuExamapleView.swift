//
//  ContextMenuExamapleView.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Muminov Sharifjon on 15/08/25.
//

import SwiftUI

struct ContextMenuExamapleView: View {
    
    @State var backColor: Color = .blue
    
    var body: some View {
        
        VStack{
            Menu("Change Color") {
                         Button("Color red") {
                             backColor = .red
                         }
                         Button("Color blue") {
                             backColor = .blue
                         }
                     }
                     .padding()
            
            RoundedRectangle(cornerRadius: 20)
                .fill(backColor)
                .frame(width: 200, height: 200)
                .contextMenu {
                    Button("Color red") {
                        self.backColor = .red
                        
                    }
                    Button("Color blue") {
                        self.backColor = .blue
                        
                    }
                }
        }
        
        
    }
}

#Preview {
    ContextMenuExamapleView()
}
