//
//  InfoRowView.swift
//  GoldenHour
//
//  Created by Artyom Guzenko on 12.03.2024.
//

import SwiftUI

enum TimesOfDay: String {
    case goldenHour = "Golden hour"
    case sunset = "Sunset"
    case blueHour = "Blue hour"
}

struct InfoRowView: View {
    @State private var notificationIsOn = false
    
    let timesOfDay: TimesOfDay
    let time: String
    let duration: String
    
    var body: some View {
        HStack {
            Image(timesOfDay.rawValue)
                .resizable()
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading) {
                Text("\(timesOfDay.rawValue)")
                    .fontWeight(.medium)
                    .font(.caption)
                
                HStack(alignment: .firstTextBaseline) {
                    Text("\(time)")
                        .fontWeight(.bold)
                        .font(.title2)
                    Text("Duration: \(duration)")
                        .fontWeight(.light)
                        .font(.caption)
                }
            }
            NotificationButton(notificationIsOn: $notificationIsOn)
        }
        .overlay {
            RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 0.2)
        }
    }
}

struct NotificationButton: View {
    @Binding var notificationIsOn: Bool
    
    var body: some View {
        Button(action: { notificationIsOn.toggle() }) {
            Label("", systemImage: notificationIsOn ? "bell" : "bell.slash")
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    InfoRowView(
        timesOfDay: TimesOfDay.sunset,
        time: "5:00",
        duration: "00:45"
    )
}
