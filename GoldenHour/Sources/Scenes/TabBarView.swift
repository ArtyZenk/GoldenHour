//
//  TabBarView.swift
//  GoldenHour
//
//  Created by Artyom Guzenko on 11.03.2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            FavoritesView()
                .tabItem {
                    Label("Favorites", systemImage: "bookmark")
                }
                
            MainView()
                .tabItem {
                    Label("Main", systemImage: "house")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gearshape")
                }
        }
    }
}

#Preview {
    TabBarView()
}
