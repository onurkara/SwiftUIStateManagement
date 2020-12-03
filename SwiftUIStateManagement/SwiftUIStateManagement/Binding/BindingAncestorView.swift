//
//  BindingAncestorView.swift
//  SwiftUIStateManagement

import SwiftUI

struct BindingAncestorView: View {

    @State var name: String = ""

    var body: some View {
        VStack {
            Text(name)
            BindingChildView(inputText: $name)
        }
    }
}
