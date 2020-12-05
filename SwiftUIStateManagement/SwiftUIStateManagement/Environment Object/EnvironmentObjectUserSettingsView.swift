//
//  EnvironmentObjectUserSettingsView.swift
//  SwiftUIStateManagement

import SwiftUI

struct EnvironmentObjectUserSettingsView: View {

    @EnvironmentObject var settings: EnvironmentObjectUserSettings

    var body: some View {
        VStack {
            Text("This is the timer for Settings View: \(settings.counter)")
            EnvironmentObjectUserSecondView()
        }
    }
}
