//
//  ListExampleView.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Muminov Sharifjon on 08/08/25.
//

import SwiftUI

struct ListExampleView: View {
    @State private var fruits: [String] = [
        "Apple", "Orange", "Banana", "Pear", "Mango", "Strawberry"]

    
    @State var greenList: [String] = [
        "Mint",
        "Dill",
        "Cilantro",
        "Chervil",
        "Parsley",
        "Arugula",
        "Lettuce leaf",
        "Spinach",
        "Cabbage leaf",
        "Horsetail",
    ]
    
    var body: some View {
        NavigationView{
            List{
                Section(header: Text("Fruits")){
                    ForEach(fruits, id: \.self){ fruit in
                        Text(fruit)
                    }
                    .onMove(perform: moveFruits)
                    .onDelete(perform: deleteFruit)
                    
                }
                
                Section(header: Text("Greens")){
                    ForEach(greenList, id: \.self){ green in
                        Text(green)
                    }
                    .onDelete(perform: deleteGreens)
                    .onMove(perform: moveGreens)
                }
                
            }
            .navigationTitle("Shop")
            .navigationBarItems(leading: EditButton())
        }
    }
    
    func moveFruits( indexSet: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indexSet, toOffset: newOffset)
    }
    
    func moveGreens( indexSet: IndexSet, newOffset: Int) {
        greenList.move(fromOffsets: indexSet, toOffset: newOffset)
    }
    
    func deleteFruit(at offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)
    }
    
    func deleteGreens(at offsets: IndexSet) {
        greenList.remove(atOffsets: offsets)
    }
}

#Preview {
    ListExampleView()
}
