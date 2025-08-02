//
//  ImageExampleView.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Muminov Sharifjon on 23/07/25.
//

import SwiftUI

struct ImageExampleView: View {
    var body: some View {
        Image("motivation")
            .resizable()
            .scaledToFill()
            .frame(width: 200,height: 200)
//            .cornerRadius(20)
            .clipShape(Circle())
            }
}

#Preview {
    ImageExampleView()
}
