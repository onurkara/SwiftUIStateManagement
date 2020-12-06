//
//  StateObjectView.swift
//  SwiftUIStateManagement

import SwiftUI

struct StateObjectView: View {

    @State private var count = 0

    var body: some View {
        VStack {
            Text("Local counter: \(count)")
            Button("Refresh counters") {
                count += 1
            }
            StateObjectInnerView()
            StateObjectInnerViewObserved()
        }
    }
}
