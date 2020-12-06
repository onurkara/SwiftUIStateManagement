//
//  StateObjectViewModel.swift
//  SwiftUIStateManagement

// When any view of SwiftUI is recreated all values are reset except the values that markes using @State
// That means observedObjects of a view is initialized again when the view is redrawn.
// State object has a little bit performance implication. When your view is re-rendered it is not recreated and that has smaller impact on your view's drawing cycle.

import Combine
import Foundation

final class StateObjectViewModel: ObservableObject {

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
