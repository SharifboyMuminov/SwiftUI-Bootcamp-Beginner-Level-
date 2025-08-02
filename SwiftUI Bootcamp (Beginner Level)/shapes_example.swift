//
//  shapes_example.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Muminov Sharifjon on 10/07/25.
//

import SwiftUI

struct shapes_example: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(width: 300,height: 200)
            .foregroundStyle(Color.blue)
    }
}

#Preview {
    shapes_example()
}
