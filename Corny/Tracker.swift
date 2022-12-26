//
//  Tracker.swift
//  Corny
//
//  Created by Nick Foster on 21.12.2022.
//

import SwiftUI


struct CornCounterView: View {
    @AppStorage("cornCount") private var cornCount: Int = 0
    private var timer: Timer?
    
    var body: some View {
        VStack {
            Text("Кукурузы съедено: \(cornCount)")
                .font(.title)
                .foregroundColor(.yellow)
            HStack {
                Button(action: {
                    self.cornCount += 1
                }) {
                    Text("Я СЪЕЛА КУКУРУЗУ").frame(width: 100, height: 100, alignment: .center)
                        .padding(100)
                        .overlay(
                            Circle()
                                .stroke(Color("maize"), lineWidth: 4)
                            .padding(6)
                        )
                }
            }
            HStack {
                Spacer()
                Button(action: {
                    if self.cornCount > 0 {
                        self.cornCount -= 1
                    }
                    
                }) {
                    Text("-").frame(width: 10, height: 10, alignment: .center)
                        .padding(10)
                        .overlay(
                            Circle()
                                .stroke(Color(.yellow), lineWidth: 4)
                            .padding(10)
                        )
                }
            }
        }
//        .onAppear {
//            // Request permission to send notifications
//            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { granted, error in
//                if granted {
//                    // Schedule a notification to reset the corn count every week
//                    let resetCornCountAction = UNNotificationAction(identifier: "resetCornCount", title: "Reset Corn Count", options: [])
//                    let resetCornCountCategory = UNNotificationCategory(identifier: "resetCornCount", actions: [resetCornCountAction], intentIdentifiers: [], options: [])
//                    UNUserNotificationCenter.current().setNotificationCategories([resetCornCountCategory])
//
//                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 60, repeats: true)
////                    604800
//                    let content = UNMutableNotificationContent()
//                    content.title = "Update Corn Count"
//                    content.body = "It's time to eat your corn!"
//                    content.categoryIdentifier = "resetCornCount"
//                    let request = UNNotificationRequest(identifier: "resetCornCount", content: content, trigger: trigger)
//                    UNUserNotificationCenter.current().add(request) { error in
//                        if let error = error {
//                            print("Error scheduling notification: \(error)")
//                        }
//                    }
//                }
//            }
//        }

    }
}

struct Tracker_Previews: PreviewProvider {
    static var previews: some View {
        CornCounterView()
    }
}
