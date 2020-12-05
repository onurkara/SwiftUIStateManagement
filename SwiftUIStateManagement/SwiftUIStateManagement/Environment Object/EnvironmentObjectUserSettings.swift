//
//  EnvironmentObjectUserSettings.swift
//  SwiftUIStateManagement

// Environment object allows us to create views that rely on shared data anywhere it is needed.
// Environment object invalidates the current view whenever the observable object changes.
// If you want your ObservedObject should be shared between multiple views you can use EnvironmentObject instead of Observable object because it is easy.
// If one view changes the environment object all view immediately that subscribed that object.

import Foundation
import Combine

final class EnvironmentObjectUserSettings: ObservableObject {

    var timer: Timer?
    @Published var counter = 0

    init() {
        timer = Timer.scheduledTimer(timeInterval: 3.0,
                                     target: self,
                                     selector: #selector(fireTimer),
                                     userInfo: nil,
                                     repeats: true)
    }

    deinit {
        timer?.invalidate()
    }

    @objc func fireTimer() {
        counter += 1
    }
}
