//
//  text_example_view.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Muminov Sharifjon on 10/07/25.
//

import SwiftUI

struct text_example_view: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.title)
            .fontWeight(.bold)
            .foregroundStyle(Color.blue)
    }
}

#Preview {
    text_example_view()
}
