//
//  ObservableObjectViewModel.swift
//  SwiftUIStateManagement

import SwiftUI

// ObservableObject synthesizes an objectWillChange publisher that emits the changed value before any of its @Published properties changes.
// Whenever the object changed you can notify view, like fetching data from api or db.
// Observed objects can be shared across more than one view. The @ObservedObject property wrapper will automatically make sure the property is watched closely so that published changes will reload any views using it.
// We use reference types here rather than value types like @State does.


final class ObservableObjectViewModel: ObservableObject {

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
