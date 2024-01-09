//
//  NavStack3.swift
//  simple navigation
//
//  Created by Raghav Deo on 30/12/23.
//

import SwiftUI
/*Parameters:
isPresented: A binding to a Boolean value that indicates whether `destination` is currently presented.
destination: A view to present.*/
struct NavStack3: View {
    @State private var showDetails = false

     var body: some View {
      NavigationStack {
       VStack {
        Button("Update detail") {
         showDetails = true
        }
       }
       .navigationDestination(isPresented: $showDetails) {
        VStack {
         Text("Deails was updated")
         Button("close") {
          showDetails = false
         }
        }
       }
      }
     }
    }
struct NavStack3_Previews: PreviewProvider {
    static var previews: some View {
        NavStack3()
    }
}
