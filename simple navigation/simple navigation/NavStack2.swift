//
//  NavStack2.swift
//  simple navigation
//
//  Created by Raghav Deo on 30/12/23.
//

import SwiftUI
/*Parameters:
Data: The type of data that this destination matches.
Destination: A view builder that defines a view to display when the stack’s navigation state contains a value of type `data`. The closure takes one argument, which is the value of the data to present.*/
struct NavStack2: View {
    var body: some View {
      NavigationStack {
       VStack {
        NavigationLink("Go to screen 1", value: "1")
        Spacer().frame(height: 10)
        NavigationLink("Go to screen 2", value: "2")
      
       }.navigationDestination(for: String.self) { value in
        Text("This is screen number \(value)")
       }
      }
     }
    }

struct NavStack2_Previews: PreviewProvider {
    static var previews: some View {
        NavStack2()
    }
}
