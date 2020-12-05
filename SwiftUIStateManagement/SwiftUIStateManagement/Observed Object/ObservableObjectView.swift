//
//  ObservableObjectView.swift
//  SwiftUIStateManagement

import SwiftUI

struct ObservableObjectView: View {

    @ObservedObject var viewModel = ObservableObjectViewModel()

    var body: some View {
        VStack {
            Text("Count: \(viewModel.counter)")
                .bold()
                .foregroundColor(.red)
                .padding(5)
                .background(Color.blue)
            ObservableObjectInnerView(viewModel: viewModel)
        }
    }
}
