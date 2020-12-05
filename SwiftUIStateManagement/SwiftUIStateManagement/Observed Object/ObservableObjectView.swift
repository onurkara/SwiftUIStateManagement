//
//  ObservableObjectView.swift
//  SwiftUIStateManagement

import SwiftUI

struct ObservableObjectView: View {

    @ObservedObject var viewModel = ObservableObjectViewModel()

    var body: some View {
        Text("Count: \(viewModel.counter)")
            .bold()
            .foregroundColor(.red)
            .padding(5)
            .background(Color.blue)
    }
}
