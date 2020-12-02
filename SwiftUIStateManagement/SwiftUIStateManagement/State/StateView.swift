//
//  StateView.swift
//  SwiftUIStateManagement

import SwiftUI


// When the state value changes, the view invalidates its appearence and recomputes the body
// You should only access a state property from inside the view's body or from methods called by it. For this reason, declare your state properties as private, to prevent clients of your view from accessing them.
// All the fields marked as State are stored in special separated memory, where only corresponded view can access and update them.

struct StateView: View {

    @State private var counter = 0

    var body: some View {
        VStack(alignment: .trailing, spacing: 5) {
            Text("Total count: \(counter)")
            Button("Hit me one more time!") {
                counter += 1
            }
            Spacer()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 0))
    }
}

struct StateView_Previews: PreviewProvider {

    static var previews: some View {
        StateView()
    }
}
