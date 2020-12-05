//
//  EnvironmentObjectUserSecondView.swift
//  SwiftUIStateManagement

import SwiftUI

struct EnvironmentObjectUserSecondView: View {

    @EnvironmentObject var settings: EnvironmentObjectUserSettings

    var body: some View {
        Text("This is the timer for Second Settings View: \(settings.counter)")
            .foregroundColor(.blue)
        Button("Tap Second View's button to initialize timer") {
            settings.counter = 0
            settings.timer?.invalidate()
        }.foregroundColor(.red)
    }

}
