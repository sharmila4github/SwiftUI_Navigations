//
//  NavStack6.swift
//  simple navigation
//
//  Created by Raghav Deo on 30/12/23.
//

import SwiftUI
struct PersonModel: Hashable {
 let name: String
 let age: Int
}
struct NavStack6: View {
    @State var path = NavigationPath(["1", "2"])
     
     var body: some View {
      NavigationStack(path: $path) {
       VStack {
        NavigationLink("Go to int screen", value: 1)
        Spacer().frame(height: 10)
        NavigationLink("Go to person screen", value: PersonModel(name: "Mark", age: 32))

       }.navigationDestination(for: String.self) { value in
        Text("This is a string screen with value: \(value)")
       }.navigationDestination(for: Int.self) { value in
        Text("This is a int screen with value: \(value)")
       }.navigationDestination(for: PersonModel.self) { value in
        Text("This is a int Person with,\nName: \(value.name), Age: \(value.age)")
       }
      }
     }
    }
struct NavStack6_Previews: PreviewProvider {
    static var previews: some View {
        NavStack6()
    }
}
