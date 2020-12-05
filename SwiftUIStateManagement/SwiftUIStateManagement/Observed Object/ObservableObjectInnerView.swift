//
//  ObservableObjectInnerView.swift
//  SwiftUIStateManagement

import SwiftUI

struct ObservableObjectInnerView: View {

    @ObservedObject var viewModel: ObservableObjectViewModel

    var body: some View {
        VStack {
            Text("Inner view counter: \(viewModel.counter)")
            Button("Tap me to reset timer") {
                viewModel.counter = 0
                viewModel.timer?.invalidate()
            }
        }
    }
}
