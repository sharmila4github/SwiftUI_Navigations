//
//  NavStack5.swift
//  simple navigation
//
//  Created by Raghav Deo on 30/12/23.
//

import SwiftUI
//Allows deep link navigation
//Allows us to define a predefined route to the new destination, and to track all stacked screens in the path.
struct NavStack5: View {
    @State var path: [String] = ["1", "2", "3"]

     var body: some View {
      NavigationStack(path: $path) {
       VStack {
        NavigationLink("Go to screen 4", value: "4")
       }.navigationDestination(for: String.self) { value in
        Text("This is screen number \(value)")
       }
      }
     }
    }

struct NavStack5_Previews: PreviewProvider {
    static var previews: some View {
        NavStack5()
    }
}
