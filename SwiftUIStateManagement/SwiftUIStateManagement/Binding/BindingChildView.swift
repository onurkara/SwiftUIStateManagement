//
//  BindingChildView.swift
//  SwiftUIStateManagement

import SwiftUI


// Use binding to create a two-way connection between a property that stores data, and a view that displays and changes the data.
// It helps you to share data between common views.
// Use binding when your view needs to mutate a property owned by an ancestor view or owned by an observable object that an ancestor has a reference to.

struct BindingChildView: View {

    @Binding var inputText: String

    var body: some View {
        TextField("What's your name?", text: $inputText)
            .font(.largeTitle)
            .foregroundColor(.blue)
            .padding(5.0)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}
