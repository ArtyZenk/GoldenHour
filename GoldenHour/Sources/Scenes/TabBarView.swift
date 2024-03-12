//
//  MainView.swift
//  GoldenHour
//
//  Created by Artyom Guzenko on 11.03.2024.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "phone")
                }
            
            FavoritesView()
                .tabItem {
                    Label("Settings", systemImage: "xmark")
                }
        }
    }
}

#Preview {
    TabBarView()
}
