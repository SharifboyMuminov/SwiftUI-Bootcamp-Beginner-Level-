//
//  TabExampleView.swift
//  SwiftUI Bootcamp (Beginner Level)
//
//  Created by Muminov Sharifjon on 15/08/25.
//

import SwiftUI

struct TabExampleView: View {
    @State var selectedTab: Int = 0
    
    init() {
        let appearance = UITabBarAppearance()
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }

    
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectTabValue: $selectedTab)
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            
            Text("Tab 2")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
                .font(.headline)
                .tabItem {
                Image(systemName: "briefcase.fill")
                
            }.tag(1)
            
            Text("Profile")
                .font(.headline)
                .tabItem {
                Image(systemName: "person.crop.circle")
            }.tag(2)
        }
    }
}

struct HomeView: View {
    @Binding var selectTabValue: Int
    
    var body: some View {
        VStack{
            Button("Go to profile") {
                selectTabValue = 2
            }
        }
    }
}

#Preview {
    TabExampleView()
}
