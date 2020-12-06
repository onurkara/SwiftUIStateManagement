//
//  StateObjectInnerViewObserved.swift
//  SwiftUIStateManagement

import SwiftUI

struct StateObjectInnerViewObserved: View {

    @ObservedObject var viewModel = StateObjectViewModel()

    var body: some View {
        VStack{
            Text("ObservedView Count :\(viewModel.counter)")
        }
    }
}
