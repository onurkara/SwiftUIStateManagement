//
//  SwiftUIStateManagementApp.swift
//  SwiftUIStateManagement

import SwiftUI

@main
struct SwiftUIStateManagementApp: App {

    //@StateObject var settings = EnvironmentObjectUserSettings()

    var body: some Scene {
        WindowGroup {
            //StateView()
            //BindingAncestorView()
            //ObservableObjectView()
            //EnvironmentObjectUserSettingsView().environmentObject(settings)
            StateObjectView()
        }
    }
}
