//
//  StateObjectInnerView.swift
//  SwiftUIStateManagement

import SwiftUI

struct StateObjectInnerView: View {

    @StateObject var viewModel = StateObjectViewModel()

    var body: some View {
        VStack{
            Text("StateObjectView Count :\(viewModel.counter)")
        }
    }
}
